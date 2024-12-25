#include <buttons.h>
#include <unity.h>

void setUp(void) {
    // set stuff up here
}

void tearDown(void) {
    // clean stuff up here
}

void test_convert_btns(void) {
    TEST_ASSERT_EQUAL(0, convertToBtns(0,0)); // No button
    TEST_ASSERT_EQUAL(0x0FFF, convertToBtns(0xFFFF,0xFFFF)); //all 12 buttons -> 0000 1111 1111 1111 
}

void test_push_pop(void){
    tst_reset();
    u_int16_t data_r;
    u_int16_t data_w=0;
    do{
        TEST_ASSERT_EQUAL(BTNQ_SUCCESS, pushPorts(data_w));
        TEST_ASSERT_EQUAL(BTNQ_SUCCESS, popPorts(&data_r));
        TEST_ASSERT_EQUAL(data_w++,data_r);
    }while(data_w!=0);
}

void test_push_full(void){
    tst_reset();
    u_int16_t data_r;
    u_int16_t data_w=0;
    printf("Back Filling QUEUE...\n");
    for(u_int16_t i=0;i<NUM_EVENTS;i++){
        TEST_ASSERT_EQUAL(BTNQ_SUCCESS, pushPorts(i));
    }
    printf("Checking ...\n");
    for(u_int16_t i=0;i<NUM_EVENTS;i++){
        TEST_ASSERT_EQUAL(BTNQ_SUCCESS, popPorts(&data_r));
        TEST_ASSERT_EQUAL(i, data_r);
    }
    TEST_ASSERT_EQUAL(BTNQ_ERROR, popPorts(&data_r));
}

void test_push_full_lost(void){
    tst_reset();
    u_int16_t data_r;
    u_int16_t data_w=0;
    printf("Back Filling QUEUE...\n");
    for(u_int16_t i=0;i<NUM_EVENTS+1;i++){
        TEST_ASSERT_EQUAL(BTNQ_SUCCESS, pushPorts(i));
    }
    printf("Checking ...\n");
    for(u_int16_t i=1;i<NUM_EVENTS+1;i++){
        TEST_ASSERT_EQUAL(BTNQ_SUCCESS, popPorts(&data_r));
        TEST_ASSERT_EQUAL(i, data_r);
    }
    TEST_ASSERT_EQUAL(BTNQ_ERROR, popPorts(&data_r));
}

void RUN_UNITY_TESTS() {
    UNITY_BEGIN();
    RUN_TEST(test_convert_btns);
    RUN_TEST(test_push_pop);
    RUN_TEST(test_push_full);
    RUN_TEST(test_push_full_lost);
    UNITY_END();
}

#ifdef ARDUINO

#include <Arduino.h>
void setup() {
    // NOTE!!! Wait for >2 secs
    // if board doesn't support software reset via Serial.DTR/RTS
    delay(2000);

    RUN_UNITY_TESTS();
}

void loop() {
    digitalWrite(13, HIGH);
    delay(100);
    digitalWrite(13, LOW);
    delay(500);
}

#else

int main(int argc, char **argv) {
    RUN_UNITY_TESTS();
    return 0;
}

#endif