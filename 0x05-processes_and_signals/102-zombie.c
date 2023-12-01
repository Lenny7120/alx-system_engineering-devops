#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>

int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

int main(void)
{
    pid_t child_pid;
    int i;

    for (i = 0; i < 5; i++)
    {
        child_pid = fork();

        if (child_pid > 0)
        {
            /* Parent process*/
            printf("Zombie process created, PID: %d\n", child_pid);
        }
        else if (child_pid == 0)
        {
            /* Child process exits immediately*/
            exit(0);
        }
        else
        {
            perror("Fork failed");
            exit(1);
        }
    }

    /* Keep the parent process running indefinitely*/
    infinite_while();

    return (0);
}
