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
    .line 229
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

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "newAppInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 198
    .local v3, "tempPackageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 202
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 203
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newAppInfo":Landroid/content/pm/ResolveInfo;
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 204
    .local v1, "newAppInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    .line 206
    .local v1, "newAppInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const v4, 0x7f0e037d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
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

    .line 78
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "noneSummary":Ljava/lang/String;
    const-string/jumbo v6, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    move-object v5, p1

    .line 87
    .local v5, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 86
    invoke-static {v6, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 84
    .end local v3    # "actionSummary":Ljava/lang/String;
    .end local v5    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 90
    .restart local v3    # "actionSummary":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "OpenCamera"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    const v6, 0x7f0e037e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 92
    :cond_2
    const-string/jumbo v6, "FrontCamera"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    const v6, 0x7f0e037f

    .line 93
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 95
    :cond_3
    const-string/jumbo v6, "TakeVideo"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    const v6, 0x7f0e0380

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 97
    :cond_4
    const-string/jumbo v6, "OpenTorch"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 98
    const v6, 0x7f0e0381

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 99
    :cond_5
    const-string/jumbo v6, "OpenShelf"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 100
    const v6, 0x7f0e021e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 102
    :cond_6
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "actionString":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v2, v6

    .line 104
    .local v0, "actionPackageName":Ljava/lang/String;
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 106
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_7
    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 107
    :cond_8
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 109
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 108
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    const/4 v6, 0x1

    aget-object v1, v2, v6

    .line 111
    .local v1, "actionShortcutId":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 112
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 114
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
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "gestureIndex":I
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_o"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const/4 v0, 0x6

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :cond_2
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    const/16 v0, 0x8

    goto :goto_0

    .line 220
    :cond_3
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    const/16 v0, 0x9

    goto :goto_0

    .line 222
    :cond_4
    const-string/jumbo v1, "oem_acc_blackscreen_gesture_w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f0e037d

    .line 152
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "noneSummary":Ljava/lang/String;
    const-string/jumbo v6, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    move-object v5, p1

    .line 161
    .local v5, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 160
    invoke-static {v6, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 158
    .end local v3    # "actionSummary":Ljava/lang/String;
    .end local v5    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 165
    .restart local v3    # "actionSummary":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "actionString":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v2, v6

    .line 167
    .local v0, "actionPackageName":Ljava/lang/String;
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 168
    const/4 v6, 0x1

    aget-object v1, v2, v6

    .line 169
    .local v1, "actionShortcutId":Ljava/lang/String;
    return-object v1

    .line 171
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

    .line 123
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "noneSummary":Ljava/lang/String;
    const-string/jumbo v6, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    move-object v5, p1

    .line 132
    .local v5, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 131
    invoke-static {v6, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "actionSummary":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 134
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 129
    .end local v3    # "actionSummary":Ljava/lang/String;
    .end local v5    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 136
    .restart local v3    # "actionSummary":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "actionString":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v2, v6

    .line 138
    .local v0, "actionPackageName":Ljava/lang/String;
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    const-string/jumbo v6, "OpenApp:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 139
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getAppNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 141
    :cond_2
    const-string/jumbo v6, "OpenShortcut:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 142
    const/4 v6, 0x1

    aget-object v1, v2, v6

    .line 143
    .local v1, "actionShortcutId":Ljava/lang/String;
    return-object v1

    .line 145
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
    .line 402
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 403
    .local v4, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const-string/jumbo v3, ""

    .line 404
    .local v3, "shortCutName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 405
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

    .line 406
    .local v1, "s":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 408
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    move-object v0, p2

    .line 411
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 415
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

    .line 378
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 379
    .local v0, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v0, :cond_0

    .line 380
    return v1

    .line 382
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
    .line 178
    const v3, 0x7f0e037d

    .line 177
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "noneSummary":Ljava/lang/String;
    const-string/jumbo v3, "oem_acc_blackscreen_gesture"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    move-object v2, p1

    .line 186
    .local v2, "realKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 185
    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "actionSummary":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "OpenShortcut:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    const/4 v3, 0x1

    return v3

    .line 183
    .end local v0    # "actionSummary":Ljava/lang/String;
    .end local v2    # "realKey":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureTypebyGestureKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "realKey":Ljava/lang/String;
    goto :goto_0

    .line 190
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
    .line 386
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 387
    .local v4, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v4, :cond_0

    .line 388
    const/4 v5, 0x0

    return v5

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 391
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

    .line 392
    .local v2, "s":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "id":Ljava/lang/CharSequence;
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 394
    const/4 v0, 0x1

    .line 398
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
    .line 357
    const-string/jumbo v3, "launcherapps"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 363
    .local v0, "mLauncherApps":Landroid/content/pm/LauncherApps;
    new-instance v1, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 369
    .local v1, "mQuery":Landroid/content/pm/LauncherApps$ShortcutQuery;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 370
    invoke-virtual {v1, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 373
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 374
    .local v2, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    return-object v2
.end method

.method public static set0(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_0

    .line 345
    const v1, 0xffff

    .line 348
    .local v1, "mul":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 349
    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    const/4 v4, 0x0

    .line 348
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 351
    .local v0, "gestureValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    .line 352
    and-int v4, v0, v1

    .line 351
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    and-int v2, v0, v1

    return v2

    .line 302
    .end local v0    # "gestureValue":I
    .end local v1    # "mul":I
    :pswitch_0
    const v1, 0xfffe

    .line 303
    .restart local v1    # "mul":I
    goto :goto_0

    .line 306
    .end local v1    # "mul":I
    :pswitch_1
    const v1, 0xfffd

    .line 307
    .restart local v1    # "mul":I
    goto :goto_0

    .line 310
    .end local v1    # "mul":I
    :pswitch_2
    const v1, 0xfffb

    .line 311
    .restart local v1    # "mul":I
    goto :goto_0

    .line 314
    .end local v1    # "mul":I
    :pswitch_3
    const v1, 0xfff7

    .line 315
    .restart local v1    # "mul":I
    goto :goto_0

    .line 318
    .end local v1    # "mul":I
    :pswitch_4
    const v1, 0xffef

    .line 319
    .restart local v1    # "mul":I
    goto :goto_0

    .line 322
    .end local v1    # "mul":I
    :pswitch_5
    const v1, 0xffdf

    .line 323
    .restart local v1    # "mul":I
    goto :goto_0

    .line 326
    .end local v1    # "mul":I
    :pswitch_6
    const v1, 0xffbf

    .line 327
    .restart local v1    # "mul":I
    goto :goto_0

    .line 330
    .end local v1    # "mul":I
    :pswitch_7
    const v1, 0xff7f

    .line 331
    .restart local v1    # "mul":I
    goto :goto_0

    .line 334
    .end local v1    # "mul":I
    :pswitch_8
    const v1, 0xfeff

    .line 335
    .restart local v1    # "mul":I
    goto :goto_0

    .line 338
    .end local v1    # "mul":I
    :pswitch_9
    const v1, 0xfdff

    .line 339
    .restart local v1    # "mul":I
    goto :goto_0

    .line 342
    .end local v1    # "mul":I
    :pswitch_a
    const v1, 0xfbff

    .line 343
    .restart local v1    # "mul":I
    goto :goto_0

    .line 298
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
    .line 235
    packed-switch p1, :pswitch_data_0

    .line 282
    const/4 v1, 0x0

    .line 285
    .local v1, "mul":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 286
    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    const/4 v4, 0x0

    .line 285
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 288
    .local v0, "gestureValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    .line 289
    or-int v4, v0, v1

    .line 288
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    or-int v2, v0, v1

    return v2

    .line 239
    .end local v0    # "gestureValue":I
    .end local v1    # "mul":I
    :pswitch_0
    const/4 v1, 0x1

    .line 240
    .restart local v1    # "mul":I
    goto :goto_0

    .line 243
    .end local v1    # "mul":I
    :pswitch_1
    const/4 v1, 0x2

    .line 244
    .restart local v1    # "mul":I
    goto :goto_0

    .line 247
    .end local v1    # "mul":I
    :pswitch_2
    const/4 v1, 0x4

    .line 248
    .restart local v1    # "mul":I
    goto :goto_0

    .line 251
    .end local v1    # "mul":I
    :pswitch_3
    const/16 v1, 0x8

    .line 252
    .restart local v1    # "mul":I
    goto :goto_0

    .line 255
    .end local v1    # "mul":I
    :pswitch_4
    const/16 v1, 0x10

    .line 256
    .restart local v1    # "mul":I
    goto :goto_0

    .line 259
    .end local v1    # "mul":I
    :pswitch_5
    const/16 v1, 0x20

    .line 260
    .restart local v1    # "mul":I
    goto :goto_0

    .line 263
    .end local v1    # "mul":I
    :pswitch_6
    const/16 v1, 0x40

    .line 264
    .restart local v1    # "mul":I
    goto :goto_0

    .line 267
    .end local v1    # "mul":I
    :pswitch_7
    const/16 v1, 0x80

    .line 268
    .restart local v1    # "mul":I
    goto :goto_0

    .line 271
    .end local v1    # "mul":I
    :pswitch_8
    const/16 v1, 0x100

    .line 272
    .restart local v1    # "mul":I
    goto :goto_0

    .line 275
    .end local v1    # "mul":I
    :pswitch_9
    const/16 v1, 0x200

    .line 276
    .restart local v1    # "mul":I
    goto :goto_0

    .line 279
    .end local v1    # "mul":I
    :pswitch_a
    const/16 v1, 0x400

    .line 280
    .restart local v1    # "mul":I
    goto :goto_0

    .line 235
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
