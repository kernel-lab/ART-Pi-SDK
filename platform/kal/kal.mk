##########################################################################################################################
# kal.mk
##########################################################################################################################

######################################
# kal C source files
######################################
KAL_C_SOURCES = \
platform/kal/src/px_abs_time_to_rel_ticks.c \
platform/kal/src/px_clock_getres.c \
platform/kal/src/px_clock_gettime.c \
platform/kal/src/px_clock_settime.c \
platform/kal/src/px_cond_broadcast.c \
platform/kal/src/px_cond_destroy.c \
platform/kal/src/px_cond_init.c \
platform/kal/src/px_cond_signal.c \
platform/kal/src/px_cond_timedwait.c \
platform/kal/src/px_cond_wait.c \
platform/kal/src/px_error.c \
platform/kal/src/px_internal_signal_dispatch.c \
platform/kal/src/px_in_thread_context.c \
platform/kal/src/px_memory_allocate.c \
platform/kal/src/px_memory_release.c \
platform/kal/src/px_mq_arrange_msg.c \
platform/kal/src/px_mq_attr_init.c \
platform/kal/src/px_mq_close.c \
platform/kal/src/px_mq_create.c \
platform/kal/src/px_mq_find_queue.c \
platform/kal/src/px_mq_get_new_queue.c \
platform/kal/src/px_mq_get_queue_desc.c \
platform/kal/src/px_mq_open.c \
platform/kal/src/px_mq_priority_search.c \
platform/kal/src/px_mq_putback_queue.c \
platform/kal/src/px_mq_queue_delete.c \
platform/kal/src/px_mq_queue_init.c \
platform/kal/src/px_mq_receive.c \
platform/kal/src/px_mq_reset_queue.c \
platform/kal/src/px_mq_send.c \
platform/kal/src/px_mq_unlink.c \
platform/kal/src/px_mx_attr_destroy.c \
platform/kal/src/px_mx_attr_getprotocol.c \
platform/kal/src/px_mx_attr_getpshared.c \
platform/kal/src/px_mx_attr_gettype.c \
platform/kal/src/px_mx_attr_initi.c \
platform/kal/src/px_mx_attr_setprotocol.c \
platform/kal/src/px_mx_attr_setpshared.c \
platform/kal/src/px_mx_attr_settype.c \
platform/kal/src/px_mx_destroy.c \
platform/kal/src/px_mx_init.c \
platform/kal/src/px_mx_lock.c \
platform/kal/src/px_mx_set_default_mutexattr.c \
platform/kal/src/px_mx_timedlock.c \
platform/kal/src/px_mx_trylock.c \
platform/kal/src/px_mx_unlock.c \
platform/kal/src/px_nanosleep.c \
platform/kal/src/px_pth_attr_destroy.c \
platform/kal/src/px_pth_attr_getdetachstate.c \
platform/kal/src/px_pth_attr_getinheritsched.c \
platform/kal/src/px_pth_attr_getschedparam.c \
platform/kal/src/px_pth_attr_getschedpolicy.c \
platform/kal/src/px_pth_attr_getstackaddr.c \
platform/kal/src/px_pth_attr_getstack.c \
platform/kal/src/px_pth_attr_getstacksize.c \
platform/kal/src/px_pth_attr_init.c \
platform/kal/src/px_pth_attr_setdetachstate.c \
platform/kal/src/px_pth_attr_setinheritsched.c \
platform/kal/src/px_pth_attr_setschedparam.c \
platform/kal/src/px_pth_attr_setschedpolicyl.c \
platform/kal/src/px_pth_attr_setstackaddr.c \
platform/kal/src/px_pth_attr_setstack.c \
platform/kal/src/px_pth_attr_setstacksize.c \
platform/kal/src/px_pth_cancel.c \
platform/kal/src/px_pth_create.c \
platform/kal/src/px_pth_detach.c \
platform/kal/src/px_pth_equal.c \
platform/kal/src/px_pth_exit.c \
platform/kal/src/px_pth_getcanceltype.c \
platform/kal/src/px_pth_getschedparam.c \
platform/kal/src/px_pth_init.c \
platform/kal/src/px_pth_join.c \
platform/kal/src/px_pth_kill.c \
platform/kal/src/px_pth_once.c \
platform/kal/src/px_pth_self.c \
platform/kal/src/px_pth_setcancelstate.c \
platform/kal/src/px_pth_setcanceltype.c \
platform/kal/src/px_pth_set_default_pthread_attr.c \
platform/kal/src/px_pth_setschedparam.c \
platform/kal/src/px_pth_sigmask.c \
platform/kal/src/px_pth_testcancel.c \
platform/kal/src/px_pth_yield.c \
platform/kal/src/px_px_initialize.c \
platform/kal/src/px_sched_get_prio.c \
platform/kal/src/px_sched_yield.c \
platform/kal/src/px_sem_close.c \
platform/kal/src/px_sem_destroy.c \
platform/kal/src/px_sem_find_sem.c \
platform/kal/src/px_sem_get_new_sem.c \
platform/kal/src/px_sem_getvalue.c \
platform/kal/src/px_sem_init.c \
platform/kal/src/px_sem_open.c \
platform/kal/src/px_sem_post.c \
platform/kal/src/px_sem_reset.c \
platform/kal/src/px_sem_set_sem_name.c \
platform/kal/src/px_sem_trywait.c \
platform/kal/src/px_sem_unlink.c \
platform/kal/src/px_sem_wait.c \
platform/kal/src/px_sig_addset.c \
platform/kal/src/px_sig_delset.c \
platform/kal/src/px_sig_emptyset.c \
platform/kal/src/px_sig_fillset.c \
platform/kal/src/px_sig_signal.c \
platform/kal/src/px_sig_wait.c \
platform/kal/src/px_sleep.c \
platform/kal/src/px_system_manager.c

######################################
# kal C include files
######################################
KAL_C_INCLUDES = \
-Iplatform/kal/inc
