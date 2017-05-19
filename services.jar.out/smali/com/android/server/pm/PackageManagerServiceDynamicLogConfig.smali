.class public Lcom/android/server/pm/PackageManagerServiceDynamicLogConfig;
.super Ljava/lang/Object;
.source "PackageManagerServiceDynamicLogConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dynamicallyConfigLogTag(Lcom/android/server/pm/PackageManagerService;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .prologue
    const/4 v3, 0x1

    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 33
    .local v1, "on":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dynamicallyConfigLogTag, opti:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", args.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dynamicallyConfigLogTag, args["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    array-length v4, p2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 39
    const-string v3, "********** Invalid argument! Get detail help as bellow: **********"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceDynamicLogConfig;->logoutTagConfigHelp(Ljava/io/PrintWriter;)V

    .line 97
    :goto_1
    return-void

    .line 44
    :cond_1
    aget-object v2, p2, v3

    .line 45
    const-string v4, "1"

    const/4 v5, 0x2

    aget-object v5, p2, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    .line 46
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigLogTag, tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    const-string v3, "all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    .line 49
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    .line 50
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    .line 51
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    .line 52
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    .line 53
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    .line 54
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    .line 55
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BROADCASTS:Z

    .line 56
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    .line 57
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    .line 58
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    .line 59
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    .line 60
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    .line 61
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    .line 62
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ABI_SELECTION:Z

    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 63
    :cond_3
    const-string v3, "install"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    goto :goto_1

    .line 66
    :cond_4
    const-string v3, "remove"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 68
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    goto :goto_1

    .line 69
    :cond_5
    const-string v3, "settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 71
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    goto :goto_1

    .line 72
    :cond_6
    const-string v3, "scan"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 74
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    goto/16 :goto_1

    .line 75
    :cond_7
    const-string v3, "verify"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 77
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    goto/16 :goto_1

    .line 78
    :cond_8
    const-string v3, "abi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 80
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ABI_SELECTION:Z

    goto/16 :goto_1

    .line 81
    :cond_9
    const-string v3, "opt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 83
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    goto/16 :goto_1

    .line 84
    :cond_a
    const-string v3, "match"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 86
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    goto/16 :goto_1

    .line 87
    :cond_b
    const-string v3, "info"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 89
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    goto/16 :goto_1

    .line 90
    :cond_c
    const-string v3, "domain"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 92
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    goto/16 :goto_1

    .line 94
    :cond_d
    const-string v3, "Failed! Invalid argument! Type cmd for help: dumpsys package log"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static logoutTagConfigHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 100
    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v0, "1 package all:  DEBUG_* "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v0, "cmd: dumpsys package log all 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v0, "2 package install:  DEBUG_INSTALL "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v0, "cmd: dumpsys package log install 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v0, "3 package remove:   DEBUG_REMOVE "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v0, "cmd: dumpsys package log remove 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v0, "4 package settings: DEBUG_SETTINGS "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v0, "cmd: dumpsys package log settings 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v0, "5 package scan:     DEBUG_PACKAGE_SCANNING "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v0, "cmd: dumpsys package log scan 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v0, "6 package verify:   DEBUG_VERIFY "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    const-string v0, "cmd: dumpsys package log verify 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v0, "7 package abi:      DEBUG_ABI_SELECTION "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v0, "cmd: dumpsys package log abi 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v0, "8 package opt:      DEBUG_DEXOPT "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v0, "cmd: dumpsys package log opt 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v0, "9 package match:    DEBUG_INTENT_MATCHING "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    const-string v0, "cmd: dumpsys package log match 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v0, "10 package info:    DEBUG_PACKAGE_INFO "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const-string v0, "cmd: dumpsys package log info 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string v0, "11 package info:    DEBUG_DOMAIN_VERIFICATION "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    const-string v0, "cmd: dumpsys package log domain 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    return-void
.end method
