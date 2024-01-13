#include <gtest/gtest.h>
#include "../src/english.h"


TEST(englishTest, read) {
    // Test with positive numbers
    EXPECT_EQ(read(2, 5), 7);
}

// The main function to run the tests
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}