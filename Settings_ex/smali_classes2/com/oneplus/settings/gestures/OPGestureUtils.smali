.class public Lcom/oneplus/settings/gestures/OPGestureUtils;
.super Ljava/lang/Object;
.source "OPGestureUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPGestureUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .prologue
    .line 265
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method public static getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "newAppInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 234
    .local v3, "tempPackageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 235
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 238
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 239
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newAppInfo":Landroid/content/pm/ResolveInfo;
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 240
    .local v1, "newAppInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    .line 242
    .local v1, "newAppInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const v4, 0x7f0e037d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getGesturePacakgeUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 79
    const v6, 0x7f0e037d

    .line 78
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "noneSummary":Ljava/lang/String;
    const-string/jumbo v6, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    move-object v4, p1

    .line 87
    .local v4, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 86
    invoke-static {v6, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "actionSummary":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    const-string/jumbo v6, ""

    return-object v6

    .line 84
    .end local v2    # "actionSummary":Ljava/lang/String;
    .end local v4    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 91
    .restart local v2    # "actionSummary":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "actionString":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v1, v6

    .line 93
    .local v0, "actionPackageName":Ljava/lang/String;
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    const-string/jumbo v5, ""

    .line 95
    .local v5, "uid":Ljava/lang/String;
    array-length v6, v1

    if-le v6, v7, :cond_2

    .line 96
    aget-object v5, v1, v7

    .line 98
    :cond_2
    return-object v5

    .line 99
    .end local v5    # "uid":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 101
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 100
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string/jumbo v5, ""

    .line 103
    .restart local v5    # "uid":Ljava/lang/String;
    array-length v6, v1

    if-le v6, v8, :cond_4

    .line 104
    aget-object v5, v1, v8

    .line 106
    :cond_4
    return-object v5

    .line 108
    .end local v5    # "uid":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, ""

    return-object v6
.end method

.method public static getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f0e037d

    .line 43
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "noneSummary":Ljava/lang/String;
    const-string/jumbo v6, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    move-object v5, p1

    .line 52
    .local v5, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 51
    invoke-static {v6, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 49
    .end local v3    # "actionSummary":Ljava/lang/String;
    .end local v5    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 56
    .restart local v3    # "actionSummary":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "actionString":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v2, v6

    .line 58
    .local v0, "actionPackageName":Ljava/lang/String;
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 59
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :cond_2
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 64
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 63
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    const/4 v6, 0x1

    aget-object v1, v2, v6

    .line 66
    .local v1, "actionShortcutId":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 67
    return-object v0

    .line 69
    :cond_3
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 72
    .end local v1    # "actionShortcutId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, ""

    return-object v6
.end method

.method public static getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f0e037d

    .line 114
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "noneSummary":Ljava/lang/String;
    const-string/jumbo v6, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    move-object v5, p1

    .line 123
    .local v5, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 122
    invoke-static {v6, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 120
    .end local v3    # "actionSummary":Ljava/lang/String;
    .end local v5    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 126
    .restart local v3    # "actionSummary":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "OpenCamera"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    const v6, 0x7f0e037e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 128
    :cond_2
    const-string/jumbo v6, "FrontCamera"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    const v6, 0x7f0e037f

    .line 129
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 131
    :cond_3
    const-string/jumbo v6, "TakeVideo"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 132
    const v6, 0x7f0e0380

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 133
    :cond_4
    const-string/jumbo v6, "OpenTorch"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 134
    const v6, 0x7f0e0381

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 135
    :cond_5
    const-string/jumbo v6, "OpenShelf"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 136
    const v6, 0x7f0e021e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 138
    :cond_6
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "actionString":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v2, v6

    .line 140
    .local v0, "actionPackageName":Ljava/lang/String;
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 142
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 141
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_7
    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 143
    :cond_8
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 145
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 144
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    const/4 v6, 0x1

    aget-object v1, v2, v6

    .line 147
    .local v1, "actionShortcutId":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 148
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 150
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string/jumbo v0, ""

    .line 27
    .local v0, "gestureType":Ljava/lang/String;
    const-string/jumbo v1, "oneplus_draw_o_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string/jumbo v0, "oem_acc_blackscreen_gesture_o"

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 29
    :cond_1
    const-string/jumbo v1, "oneplus_draw_v_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    const-string/jumbo v0, "oem_acc_blackscreen_gesture_v"

    goto :goto_0

    .line 31
    :cond_2
    const-string/jumbo v1, "oneplus_draw_s_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    const-string/jumbo v0, "oem_acc_blackscreen_gesture_s"

    goto :goto_0

    .line 33
    :cond_3
    const-string/jumbo v1, "oneplus_draw_m_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    const-string/jumbo v0, "oem_acc_blackscreen_gesture_m"

    goto :goto_0

    .line 35
    :cond_4
    const-string/jumbo v1, "oneplus_draw_w_start_app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string/jumbo v0, "oem_acc_blackscreen_gesture_w"

    goto :goto_0
.end method

.method public static getIndexByGestureValueKey(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "gestureIndex":I
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_o"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    const/4 v0, 0x6

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_2
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    const/16 v0, 0x8

    goto :goto_0

    .line 256
    :cond_3
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    const/16 v0, 0x9

    goto :goto_0

    .line 258
    :cond_4
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f0e037d

    .line 188
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "noneSummary":Ljava/lang/String;
    const-string/jumbo v6, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    move-object v5, p1

    .line 197
    .local v5, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 196
    invoke-static {v6, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 194
    .end local v3    # "actionSummary":Ljava/lang/String;
    .end local v5    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 201
    .restart local v3    # "actionSummary":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "actionString":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v2, v6

    .line 203
    .local v0, "actionPackageName":Ljava/lang/String;
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    const/4 v6, 0x1

    aget-object v1, v2, v6

    .line 205
    .local v1, "actionShortcutId":Ljava/lang/String;
    return-object v1

    .line 207
    .end local v1    # "actionShortcutId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, ""

    return-object v6
.end method

.method public static getShortCutNameByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f0e037d

    .line 159
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "noneSummary":Ljava/lang/String;
    const-string/jumbo v6, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    move-object v5, p1

    .line 168
    .local v5, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 167
    invoke-static {v6, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 165
    .end local v3    # "actionSummary":Ljava/lang/String;
    .end local v5    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 172
    .restart local v3    # "actionSummary":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "actionString":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v2, v6

    .line 174
    .local v0, "actionPackageName":Ljava/lang/String;
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 176
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 175
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 177
    :cond_2
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 178
    const/4 v6, 0x1

    aget-object v1, v2, v6

    .line 179
    .local v1, "actionShortcutId":Ljava/lang/String;
    return-object v1

    .line 181
    .end local v1    # "actionShortcutId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, ""

    return-object v6
.end method

.method public static getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortCutId"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 439
    .local v4, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const-string/jumbo v3, ""

    .line 440
    .local v3, "shortCutName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 441
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 442
    .local v1, "s":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 443
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 444
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    move-object v0, p2

    .line 447
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 451
    .end local v0    # "label":Ljava/lang/CharSequence;
    .end local v1    # "s":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "s$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method

.method public static hasShortCuts(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 414
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 415
    .local v0, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v0, :cond_0

    .line 416
    return v1

    .line 418
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static hasShortCutsGesture(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    const v3, 0x7f0e037d

    .line 213
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "noneSummary":Ljava/lang/String;
    const-string/jumbo v3, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    move-object v2, p1

    .line 222
    .local v2, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 221
    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "actionSummary":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "OpenShortcut:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    const/4 v3, 0x1

    return v3

    .line 219
    .end local v0    # "actionSummary":Ljava/lang/String;
    .end local v2    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 226
    .restart local v0    # "actionSummary":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortCutId"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 423
    .local v4, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v4, :cond_0

    .line 424
    const/4 v5, 0x0

    return v5

    .line 426
    :cond_0
    const/4 v0, 0x0

    .line 427
    .local v0, "hasShortcutId":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 428
    .local v2, "s":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "id":Ljava/lang/CharSequence;
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 430
    const/4 v0, 0x1

    .line 434
    .end local v1    # "id":Ljava/lang/CharSequence;
    .end local v2    # "s":Landroid/content/pm/ShortcutInfo;
    :cond_2
    return v0
.end method

.method public static loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    const-string/jumbo v3, "launcherapps"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 399
    .local v0, "mLauncherApps":Landroid/content/pm/LauncherApps;
    new-instance v1, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 405
    .local v1, "mQuery":Landroid/content/pm/LauncherApps$ShortcutQuery;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 406
    invoke-virtual {v1, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 409
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 410
    .local v2, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    return-object v2
.end method

.method public static set0(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    .line 381
    const v1, 0xffff

    .line 384
    .local v1, "mul":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 385
    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    const/4 v4, 0x0

    .line 384
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 387
    .local v0, "gestureValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    .line 388
    and-int v4, v0, v1

    .line 387
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    and-int v2, v0, v1

    return v2

    .line 338
    .end local v0    # "gestureValue":I
    .end local v1    # "mul":I
    :pswitch_0
    const v1, 0xfffe

    .line 339
    .restart local v1    # "mul":I
    goto :goto_0

    .line 342
    .end local v1    # "mul":I
    :pswitch_1
    const v1, 0xfffd

    .line 343
    .restart local v1    # "mul":I
    goto :goto_0

    .line 346
    .end local v1    # "mul":I
    :pswitch_2
    const v1, 0xfffb

    .line 347
    .restart local v1    # "mul":I
    goto :goto_0

    .line 350
    .end local v1    # "mul":I
    :pswitch_3
    const v1, 0xfff7

    .line 351
    .restart local v1    # "mul":I
    goto :goto_0

    .line 354
    .end local v1    # "mul":I
    :pswitch_4
    const v1, 0xffef

    .line 355
    .restart local v1    # "mul":I
    goto :goto_0

    .line 358
    .end local v1    # "mul":I
    :pswitch_5
    const v1, 0xffdf

    .line 359
    .restart local v1    # "mul":I
    goto :goto_0

    .line 362
    .end local v1    # "mul":I
    :pswitch_6
    const v1, 0xffbf

    .line 363
    .restart local v1    # "mul":I
    goto :goto_0

    .line 366
    .end local v1    # "mul":I
    :pswitch_7
    const v1, 0xff7f

    .line 367
    .restart local v1    # "mul":I
    goto :goto_0

    .line 370
    .end local v1    # "mul":I
    :pswitch_8
    const v1, 0xfeff

    .line 371
    .restart local v1    # "mul":I
    goto :goto_0

    .line 374
    .end local v1    # "mul":I
    :pswitch_9
    const v1, 0xfdff

    .line 375
    .restart local v1    # "mul":I
    goto :goto_0

    .line 378
    .end local v1    # "mul":I
    :pswitch_a
    const v1, 0xfbff

    .line 379
    .restart local v1    # "mul":I
    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static set1(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 271
    packed-switch p1, :pswitch_data_0

    .line 318
    const/4 v1, 0x0

    .line 321
    .local v1, "mul":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 322
    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    const/4 v4, 0x0

    .line 321
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 324
    .local v0, "gestureValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    .line 325
    or-int v4, v0, v1

    .line 324
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    or-int v2, v0, v1

    return v2

    .line 275
    .end local v0    # "gestureValue":I
    .end local v1    # "mul":I
    :pswitch_0
    const/4 v1, 0x1

    .line 276
    .restart local v1    # "mul":I
    goto :goto_0

    .line 279
    .end local v1    # "mul":I
    :pswitch_1
    const/4 v1, 0x2

    .line 280
    .restart local v1    # "mul":I
    goto :goto_0

    .line 283
    .end local v1    # "mul":I
    :pswitch_2
    const/4 v1, 0x4

    .line 284
    .restart local v1    # "mul":I
    goto :goto_0

    .line 287
    .end local v1    # "mul":I
    :pswitch_3
    const/16 v1, 0x8

    .line 288
    .restart local v1    # "mul":I
    goto :goto_0

    .line 291
    .end local v1    # "mul":I
    :pswitch_4
    const/16 v1, 0x10

    .line 292
    .restart local v1    # "mul":I
    goto :goto_0

    .line 295
    .end local v1    # "mul":I
    :pswitch_5
    const/16 v1, 0x20

    .line 296
    .restart local v1    # "mul":I
    goto :goto_0

    .line 299
    .end local v1    # "mul":I
    :pswitch_6
    const/16 v1, 0x40

    .line 300
    .restart local v1    # "mul":I
    goto :goto_0

    .line 303
    .end local v1    # "mul":I
    :pswitch_7
    const/16 v1, 0x80

    .line 304
    .restart local v1    # "mul":I
    goto :goto_0

    .line 307
    .end local v1    # "mul":I
    :pswitch_8
    const/16 v1, 0x100

    .line 308
    .restart local v1    # "mul":I
    goto :goto_0

    .line 311
    .end local v1    # "mul":I
    :pswitch_9
    const/16 v1, 0x200

    .line 312
    .restart local v1    # "mul":I
    goto :goto_0

    .line 315
    .end local v1    # "mul":I
    :pswitch_a
    const/16 v1, 0x400

    .line 316
    .restart local v1    # "mul":I
    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
