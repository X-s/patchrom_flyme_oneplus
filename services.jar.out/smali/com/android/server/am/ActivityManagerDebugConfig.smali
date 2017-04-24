.class Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# static fields
.field static final APPEND_CATEGORY_NAME:Z = false

.field static DEBUG_ADD_REMOVE:Z = false

.field static DEBUG_ALL:Z = false

.field static DEBUG_ALL_ACTIVITIES:Z = false

.field static final DEBUG_ANR:Z = false

.field static DEBUG_APP:Z = false

.field static DEBUG_BACKUP:Z = false

.field static DEBUG_BG_USAGE_QUICK:Z = false

.field static DEBUG_BROADCAST:Z = false

.field static DEBUG_BROADCAST_BACKGROUND:Z = false

.field static DEBUG_BROADCAST_LIGHT:Z = false

.field static DEBUG_CLEANUP:Z = false

.field static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_CONTAINERS:Z = false

.field static DEBUG_FOCUS:Z = false

.field static DEBUG_IDLE:Z = false

.field static DEBUG_IMMERSIVE:Z = false

.field static DEBUG_LOCKSCREEN:Z = false

.field static DEBUG_LOCKTASK:Z = false

.field static DEBUG_LRU:Z = false

.field static DEBUG_MU:Z = false

.field static DEBUG_OOM_ADJ:Z = false

.field static DEBUG_PAUSE:Z = false

.field static DEBUG_POWER:Z = false

.field static DEBUG_POWER_QUICK:Z = false

.field static DEBUG_PROCESSES:Z = false

.field static DEBUG_PROCESS_OBSERVERS:Z = false

.field static DEBUG_PROVIDER:Z = false

.field static DEBUG_PSS:Z = false

.field static DEBUG_RECENTS:Z = false

.field static DEBUG_RELEASE:Z = false

.field static DEBUG_RESULTS:Z = false

.field static DEBUG_SAVED_STATE:Z = false

.field static DEBUG_SCREENSHOTS:Z = false

.field static DEBUG_SERVICE:Z = false

.field static DEBUG_SERVICE_EXECUTING:Z = false

.field static DEBUG_STACK:Z = false

.field static DEBUG_STATES:Z = false

.field static DEBUG_SWITCH:Z = false

.field static DEBUG_TASKS:Z = false

.field static DEBUG_THUMBNAILS:Z = false

.field static DEBUG_TRANSITION:Z = false

.field static DEBUG_UID_OBSERVERS:Z = false

.field static DEBUG_URI_PERMISSION:Z = false

.field static DEBUG_USAGE_STATS:Z = false

.field static DEBUG_USER_LEAVING:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static DEBUG_VISIBLE_BEHIND:Z = false

.field static final POSTFIX_ADD_REMOVE:Ljava/lang/String; = ""

.field static final POSTFIX_APP:Ljava/lang/String; = ""

.field static final POSTFIX_BACKUP:Ljava/lang/String; = ""

.field static final POSTFIX_BROADCAST:Ljava/lang/String; = ""

.field static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field static final POSTFIX_CONFIGURATION:Ljava/lang/String; = ""

.field static final POSTFIX_CONTAINERS:Ljava/lang/String; = ""

.field static final POSTFIX_FOCUS:Ljava/lang/String; = ""

.field static final POSTFIX_IDLE:Ljava/lang/String; = ""

.field static final POSTFIX_IMMERSIVE:Ljava/lang/String; = ""

.field static final POSTFIX_LOCKSCREEN:Ljava/lang/String; = ""

.field static final POSTFIX_LOCKTASK:Ljava/lang/String; = ""

.field static final POSTFIX_LRU:Ljava/lang/String; = ""

.field static final POSTFIX_MU:Ljava/lang/String; = "_MU"

.field static final POSTFIX_OOM_ADJ:Ljava/lang/String; = ""

.field static final POSTFIX_PAUSE:Ljava/lang/String; = ""

.field static final POSTFIX_POWER:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESSES:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String; = ""

.field static final POSTFIX_PROVIDER:Ljava/lang/String; = ""

.field static final POSTFIX_PSS:Ljava/lang/String; = ""

.field static final POSTFIX_RECENTS:Ljava/lang/String; = ""

.field static final POSTFIX_RELEASE:Ljava/lang/String; = ""

.field static final POSTFIX_RESULTS:Ljava/lang/String; = ""

.field static final POSTFIX_SAVED_STATE:Ljava/lang/String; = ""

.field static final POSTFIX_SCREENSHOTS:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String; = ""

.field static final POSTFIX_STACK:Ljava/lang/String; = ""

.field static final POSTFIX_STATES:Ljava/lang/String; = ""

.field static final POSTFIX_SWITCH:Ljava/lang/String; = ""

.field static final POSTFIX_TASKS:Ljava/lang/String; = ""

.field static final POSTFIX_THUMBNAILS:Ljava/lang/String; = ""

.field static final POSTFIX_TRANSITION:Ljava/lang/String; = ""

.field static final POSTFIX_UID_OBSERVERS:Ljava/lang/String; = ""

.field static final POSTFIX_URI_PERMISSION:Ljava/lang/String; = ""

.field static final POSTFIX_USER_LEAVING:Ljava/lang/String; = ""

.field static final POSTFIX_VISIBILITY:Ljava/lang/String; = ""

.field static final POSTFIX_VISIBLE_BEHIND:Ljava/lang/String; = ""

.field static final TAG_AM:Ljava/lang/String; = "ActivityManager"

.field static final TAG_WITH_CLASS_NAME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    .line 45
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    .line 48
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 50
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    .line 51
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    .line 52
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 53
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 54
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 55
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 56
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 57
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 58
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 59
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    .line 60
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_c

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    .line 61
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKSCREEN:Z

    .line 62
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_e

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    .line 63
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 64
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_10

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 65
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_11

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    .line 66
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_12

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 67
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_13

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 68
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-nez v0, :cond_14

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 69
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_15

    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 70
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_16

    move v0, v1

    :goto_15
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 71
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_17

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 72
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_18

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 73
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_19

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 74
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_1a

    move v0, v1

    :goto_19
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 75
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_1b

    move v0, v1

    :goto_1a
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 76
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_1c

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 77
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_1d

    move v0, v1

    :goto_1c
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    .line 78
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_1e

    move v0, v1

    :goto_1d
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 79
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_1f

    move v0, v1

    :goto_1e
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 80
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_20

    move v0, v1

    :goto_1f
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    .line 81
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_21

    move v0, v1

    :goto_20
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    .line 82
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_22

    move v0, v1

    :goto_21
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 83
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_23

    move v0, v1

    :goto_22
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    .line 84
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_24

    move v0, v1

    :goto_23
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_THUMBNAILS:Z

    .line 85
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_25

    move v0, v1

    :goto_24
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 86
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_26

    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 87
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_27

    move v0, v1

    :goto_26
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_URI_PERMISSION:Z

    .line 88
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_28

    move v0, v1

    :goto_27
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 89
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_29

    move v0, v1

    :goto_28
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 90
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_2a

    move v0, v1

    :goto_29
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBLE_BEHIND:Z

    .line 91
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 92
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BG_USAGE_QUICK:Z

    return-void

    :cond_1
    move v0, v2

    .line 45
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 48
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 50
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 51
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 52
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 53
    goto/16 :goto_5

    :cond_7
    move v0, v2

    .line 54
    goto/16 :goto_6

    :cond_8
    move v0, v2

    .line 55
    goto/16 :goto_7

    :cond_9
    move v0, v2

    .line 56
    goto/16 :goto_8

    :cond_a
    move v0, v2

    .line 57
    goto/16 :goto_9

    :cond_b
    move v0, v2

    .line 59
    goto/16 :goto_a

    :cond_c
    move v0, v2

    .line 60
    goto/16 :goto_b

    :cond_d
    move v0, v2

    .line 61
    goto/16 :goto_c

    :cond_e
    move v0, v2

    .line 62
    goto/16 :goto_d

    :cond_f
    move v0, v2

    .line 63
    goto/16 :goto_e

    :cond_10
    move v0, v2

    .line 64
    goto/16 :goto_f

    :cond_11
    move v0, v2

    .line 65
    goto/16 :goto_10

    :cond_12
    move v0, v2

    .line 66
    goto/16 :goto_11

    :cond_13
    move v0, v2

    .line 67
    goto/16 :goto_12

    :cond_14
    move v0, v2

    .line 68
    goto/16 :goto_13

    :cond_15
    move v0, v2

    .line 69
    goto/16 :goto_14

    :cond_16
    move v0, v2

    .line 70
    goto/16 :goto_15

    :cond_17
    move v0, v2

    .line 71
    goto/16 :goto_16

    :cond_18
    move v0, v2

    .line 72
    goto/16 :goto_17

    :cond_19
    move v0, v2

    .line 73
    goto/16 :goto_18

    :cond_1a
    move v0, v2

    .line 74
    goto/16 :goto_19

    :cond_1b
    move v0, v2

    .line 75
    goto/16 :goto_1a

    :cond_1c
    move v0, v2

    .line 76
    goto/16 :goto_1b

    :cond_1d
    move v0, v2

    .line 77
    goto/16 :goto_1c

    :cond_1e
    move v0, v2

    .line 78
    goto/16 :goto_1d

    :cond_1f
    move v0, v2

    .line 79
    goto/16 :goto_1e

    :cond_20
    move v0, v2

    .line 80
    goto/16 :goto_1f

    :cond_21
    move v0, v2

    .line 81
    goto/16 :goto_20

    :cond_22
    move v0, v2

    .line 82
    goto/16 :goto_21

    :cond_23
    move v0, v2

    .line 83
    goto/16 :goto_22

    :cond_24
    move v0, v2

    .line 84
    goto/16 :goto_23

    :cond_25
    move v0, v2

    .line 85
    goto/16 :goto_24

    :cond_26
    move v0, v2

    .line 86
    goto/16 :goto_25

    :cond_27
    move v0, v2

    .line 87
    goto/16 :goto_26

    :cond_28
    move v0, v2

    .line 88
    goto/16 :goto_27

    :cond_29
    move v0, v2

    .line 89
    goto/16 :goto_28

    :cond_2a
    move v0, v2

    .line 90
    goto/16 :goto_29
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
