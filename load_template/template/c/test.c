#include <stdarg.h>
#include <setjmp.h>
#include <cmockery.h>


void test_case1(void **state)
{
}

void test_case2(void **state)
{
}

int main(int argc, char *argv[])
{

    UnitTest TESTS[] = {
	unit_test(test_case1),
	unit_test(test_case2)
    };
    return run_tests(TESTS);
}
