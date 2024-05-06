##########################################################################################################################
# kal.mk
##########################################################################################################################

######################################
# kal C source files
######################################
KAL_C_SOURCES = \
src/px_abs_time_to_rel_ticks.c \
src/px_clock_getres.c \
src/px_clock_gettime.c \
src/px_clock_settime.c \
src/px_cond_broadcast.c \
src/px_cond_destroy.c \
src/px_cond_init.c \
src/px_cond_signal.c \
src/px_cond_timedwait.c \
src/px_cond_wait.c \
src/px_error.c \
src/px_internal_signal_dispatch.c \
src/px_in_thread_context.c \
src/px_memory_allocate.c \
src/px_memory_release.c \
src/px_mq_arrange_msg.c \
src/px_mq_attr_init.c \
src/px_mq_close.c \
src/px_mq_create.c \
src/px_mq_find_queue.c \
src/px_mq_get_new_queue.c \
src/px_mq_get_queue_desc.c \
src/px_mq_open.c \
src/px_mq_priority_search.c \
src/px_mq_putback_queue.c \
src/px_mq_queue_delete.c \
src/px_mq_queue_init.c \
src/px_mq_receive.c \
src/px_mq_reset_queue.c \
src/px_mq_send.c \
src/px_mq_unlink.c \
src/px_mx_attr_destroy.c \
src/px_mx_attr_getprotocol.c \
src/px_mx_attr_getpshared.c \
src/px_mx_attr_gettype.c \
src/px_mx_attr_initi.c \
src/px_mx_attr_setprotocol.c \
src/px_mx_attr_setpshared.c \
src/px_mx_attr_settype.c \
src/px_mx_destroy.c \
src/px_mx_init.c \
src/px_mx_lock.c \
src/px_mx_set_default_mutexattr.c \
src/px_mx_timedlock.c \
src/px_mx_trylock.c \
src/px_mx_unlock.c \
src/px_nanosleep.c \
src/px_pth_attr_destroy.c \
src/px_pth_attr_getdetachstate.c \
src/px_pth_attr_getinheritsched.c \
src/px_pth_attr_getschedparam.c \
src/px_pth_attr_getschedpolicy.c \
src/px_pth_attr_getstackaddr.c \
src/px_pth_attr_getstack.c \
src/px_pth_attr_getstacksize.c \
src/px_pth_attr_init.c \
src/px_pth_attr_setdetachstate.c \
src/px_pth_attr_setinheritsched.c \
src/px_pth_attr_setschedparam.c \
src/px_pth_attr_setschedpolicyl.c \
src/px_pth_attr_setstackaddr.c \
src/px_pth_attr_setstack.c \
src/px_pth_attr_setstacksize.c \
src/px_pth_cancel.c \
src/px_pth_create.c \
src/px_pth_detach.c \
src/px_pth_equal.c \
src/px_pth_exit.c \
src/px_pth_getcanceltype.c \
src/px_pth_getschedparam.c \
src/px_pth_init.c \
src/px_pth_join.c \
src/px_pth_kill.c \
src/px_pth_once.c \
src/px_pth_self.c \
src/px_pth_setcancelstate.c \
src/px_pth_setcanceltype.c \
src/px_pth_set_default_pthread_attr.c \
src/px_pth_setschedparam.c \
src/px_pth_sigmask.c \
src/px_pth_testcancel.c \
src/px_pth_yield.c \
src/px_px_initialize.c \
src/px_sched_get_prio.c \
src/px_sched_yield.c \
src/px_sem_close.c \
src/px_sem_destroy.c \
src/px_sem_find_sem.c \
src/px_sem_get_new_sem.c \
src/px_sem_getvalue.c \
src/px_sem_init.c \
src/px_sem_open.c \
src/px_sem_post.c \
src/px_sem_reset.c \
src/px_sem_set_sem_name.c \
src/px_sem_trywait.c \
src/px_sem_unlink.c \
src/px_sem_wait.c \
src/px_sig_addset.c \
src/px_sig_delset.c \
src/px_sig_emptyset.c \
src/px_sig_fillset.c \
src/px_sig_signal.c \
src/px_sig_wait.c \
src/px_sleep.c \
src/px_system_manager.c

######################################
# kal C include files
######################################
KAL_C_INCLUDES = \
-Iplatform/kal/inc
