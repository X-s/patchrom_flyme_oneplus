.class public Lcom/android/settings_exlib/RestrictedLockUtils;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 286
    const-string/jumbo v6, "device_policy"

    .line 285
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 287
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    .line 288
    return-object v7

    .line 290
    :cond_0
    invoke-static {p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 291
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v3, 0x1

    .line 292
    .local v3, "permitted":Z
    if-eqz v0, :cond_1

    .line 293
    iget-object v6, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v6, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 296
    .end local v3    # "permitted":Z
    :cond_1
    invoke-static {p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getManagedProfileId(Landroid/content/Context;I)I

    move-result v2

    .line 297
    .local v2, "managedProfileId":I
    invoke-static {p0, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 298
    .local v5, "profileAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v4, 0x1

    .line 299
    .local v4, "permittedByProfileAdmin":Z
    if-eqz v5, :cond_2

    .line 301
    iget-object v6, v5, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 300
    invoke-virtual {v1, v6, p1, v2}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    .line 303
    .end local v4    # "permittedByProfileAdmin":Z
    :cond_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 305
    :cond_3
    if-nez v3, :cond_5

    .line 306
    return-object v0

    .line 304
    :cond_4
    sget-object v6, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v6

    .line 307
    :cond_5
    if-nez v4, :cond_6

    .line 308
    return-object v5

    .line 310
    :cond_6
    return-object v7
.end method

.method public static checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 337
    if-nez p1, :cond_0

    .line 338
    return-object v7

    .line 341
    :cond_0
    const-string/jumbo v4, "device_policy"

    .line 340
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 342
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_1

    .line 343
    return-object v7

    .line 345
    :cond_1
    const/4 v2, 0x0

    .line 346
    .local v2, "isAccountTypeDisabled":Z
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "disabledTypes":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 348
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 349
    const/4 v2, 0x1

    .line 353
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_4

    .line 354
    return-object v7

    .line 347
    .restart local v3    # "type":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 356
    .end local v3    # "type":Ljava/lang/String;
    :cond_4
    invoke-static {p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    return-object v4
.end method

.method public static checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 219
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 221
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-static {p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 224
    :catch_0
    move-exception v0

    .line 227
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 368
    const-string/jumbo v2, "device_policy"

    .line 367
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 369
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 373
    .local v0, "adminComponent":Landroid/content/ComponentName;
    new-instance v2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 370
    .end local v0    # "adminComponent":Landroid/content/ComponentName;
    :cond_0
    return-object v3
.end method

.method public static checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 233
    const-string/jumbo v6, "device_policy"

    .line 232
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 234
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    .line 235
    return-object v7

    .line 237
    :cond_0
    invoke-static {p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 238
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v3, 0x1

    .line 239
    .local v3, "permitted":Z
    if-eqz v0, :cond_1

    .line 240
    iget-object v6, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v6, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 243
    .end local v3    # "permitted":Z
    :cond_1
    invoke-static {p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getManagedProfileId(Landroid/content/Context;I)I

    move-result v2

    .line 244
    .local v2, "managedProfileId":I
    invoke-static {p0, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 245
    .local v5, "profileAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    const/4 v4, 0x1

    .line 246
    .local v4, "permittedByProfileAdmin":Z
    if-eqz v5, :cond_2

    .line 247
    iget-object v6, v5, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v6, p1, v2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    .line 250
    .end local v4    # "permittedByProfileAdmin":Z
    :cond_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 252
    :cond_3
    if-nez v3, :cond_5

    .line 253
    return-object v0

    .line 251
    :cond_4
    sget-object v6, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v6

    .line 254
    :cond_5
    if-nez v4, :cond_6

    .line 255
    return-object v5

    .line 257
    :cond_6
    return-object v7
.end method

.method public static checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyguardFeatures"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v12, 0x0

    .line 122
    const-string/jumbo v11, "device_policy"

    .line 121
    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 123
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v3, :cond_0

    .line 124
    return-object v12

    .line 126
    :cond_0
    const-string/jumbo v11, "user"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 127
    .local v8, "um":Landroid/os/UserManager;
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 128
    .local v6, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v4, 0x0

    .line 129
    .local v4, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 130
    invoke-virtual {v3, p2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v2, :cond_1

    .line 132
    return-object v12

    .line 134
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 135
    .local v0, "admin":Landroid/content/ComponentName;
    invoke-virtual {v3, v0, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v11

    and-int/2addr v11, p1

    if-eqz v11, :cond_2

    .line 136
    if-nez v4, :cond_3

    .line 137
    new-instance v4, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v4, v0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .local v4, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_0

    .line 139
    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3
    sget-object v11, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v11

    .line 146
    .end local v0    # "admin":Landroid/content/ComponentName;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v4, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_4
    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .local v10, "userInfo$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 147
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 148
    .restart local v2    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_5

    .line 152
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    .line 153
    .local v5, "isSeparateProfileChallengeEnabled":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "admin$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 154
    .restart local v0    # "admin":Landroid/content/ComponentName;
    if-nez v5, :cond_8

    .line 155
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0, v11}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v11

    and-int/2addr v11, p1

    if-eqz v11, :cond_8

    .line 157
    if-nez v4, :cond_7

    .line 158
    new-instance v4, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v0, v11}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .local v4, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_1

    .line 160
    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_7
    sget-object v11, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v11

    .line 169
    :cond_8
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 172
    invoke-virtual {v3, v9}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    .line 173
    .local v7, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0, v11}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v11

    and-int/2addr v11, p1

    if-eqz v11, :cond_6

    .line 175
    if-nez v4, :cond_9

    .line 176
    new-instance v4, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v0, v11}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .restart local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_1

    .line 178
    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_9
    sget-object v11, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v11

    .line 185
    .end local v0    # "admin":Landroid/content/ComponentName;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5    # "isSeparateProfileChallengeEnabled":Z
    .end local v7    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_a
    return-object v4
.end method

.method public static checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 466
    const-string/jumbo v15, "device_policy"

    .line 465
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 467
    .local v5, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v5, :cond_0

    .line 468
    const/4 v15, 0x0

    return-object v15

    .line 470
    :cond_0
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 471
    .local v8, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v6, 0x0

    .line 472
    .local v6, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 473
    .local v13, "userId":I
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 474
    .local v12, "um":Landroid/os/UserManager;
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v10

    .line 475
    .local v10, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 479
    .local v11, "profilesSize":I
    const/4 v7, 0x0

    .end local v6    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_7

    .line 480
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    .line 481
    .local v14, "userInfo":Landroid/content/pm/UserInfo;
    iget v15, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v15}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v4

    .line 482
    .local v4, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v4, :cond_2

    .line 479
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 485
    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "admin$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 486
    .local v2, "admin":Landroid/content/ComponentName;
    iget v15, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v2, v15}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_5

    .line 487
    if-nez v6, :cond_4

    .line 488
    new-instance v6, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget v15, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, v2, v15}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .local v6, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_1

    .line 490
    .end local v6    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_4
    sget-object v15, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v15

    .line 498
    :cond_5
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 501
    invoke-virtual {v5, v14}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    .line 502
    .local v9, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget v15, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v2, v15}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_3

    .line 503
    if-nez v6, :cond_6

    .line 504
    new-instance v6, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget v15, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, v2, v15}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .restart local v6    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_1

    .line 506
    .end local v6    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_6
    sget-object v15, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v15

    .line 512
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v3    # "admin$iterator":Ljava/util/Iterator;
    .end local v4    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v9    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    return-object v6
.end method

.method public static checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x0

    .line 387
    const-string/jumbo v11, "device_policy"

    .line 386
    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 388
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v3, :cond_0

    .line 389
    return-object v12

    .line 392
    :cond_0
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 393
    .local v6, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v4, 0x0

    .line 394
    .local v4, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 397
    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 398
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v2, :cond_1

    .line 399
    return-object v12

    .line 401
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 402
    .local v0, "admin":Landroid/content/ComponentName;
    invoke-virtual {v3, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v11

    if-lez v11, :cond_2

    .line 404
    if-nez v4, :cond_3

    .line 405
    new-instance v4, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v4, v0, p1}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .local v4, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_0

    .line 407
    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3
    sget-object v11, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v11

    .line 414
    .end local v0    # "admin":Landroid/content/ComponentName;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v4, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_4
    const-string/jumbo v11, "user"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 415
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .local v10, "userInfo$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 416
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 417
    .restart local v2    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_5

    .line 421
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    .line 422
    .local v5, "isSeparateProfileChallengeEnabled":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "admin$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 423
    .restart local v0    # "admin":Landroid/content/ComponentName;
    if-nez v5, :cond_8

    .line 424
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v11

    if-lez v11, :cond_8

    .line 426
    if-nez v4, :cond_7

    .line 427
    new-instance v4, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v0, v11}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .local v4, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_1

    .line 429
    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_7
    sget-object v11, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v11

    .line 438
    :cond_8
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 441
    invoke-virtual {v3, v9}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    .line 442
    .local v7, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v11

    if-lez v11, :cond_6

    .line 444
    if-nez v4, :cond_9

    .line 445
    new-instance v4, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v0, v11}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .restart local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    goto :goto_1

    .line 447
    .end local v4    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_9
    sget-object v11, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v11

    .line 454
    .end local v0    # "admin":Landroid/content/ComponentName;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5    # "isSeparateProfileChallengeEnabled":Z
    .end local v7    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    .end local v8    # "um":Landroid/os/UserManager;
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_a
    return-object v4
.end method

.method public static checkIfRemoteContactSearchDisallowed(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 267
    const-string/jumbo v3, "device_policy"

    .line 266
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 268
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    .line 269
    return-object v4

    .line 271
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 272
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-nez v0, :cond_1

    .line 273
    return-object v4

    .line 275
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 276
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 276
    if-eqz v3, :cond_2

    .line 278
    return-object v0

    .line 280
    :cond_2
    return-object v4
.end method

.method public static checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 72
    const-string/jumbo v6, "device_policy"

    .line 71
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 73
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    .line 74
    return-object v7

    .line 76
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .line 78
    .local v5, "um":Landroid/os/UserManager;
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 77
    invoke-virtual {v5, p1, v6}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    .line 81
    .local v4, "restrictionSource":I
    if-eqz v4, :cond_1

    .line 82
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 83
    :cond_1
    return-object v7

    .line 87
    :cond_2
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    .line 89
    .local v3, "enforcedByProfileOwner":Z
    :goto_0
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_4

    const/4 v2, 0x1

    .line 90
    .local v2, "enforcedByDeviceOwner":Z
    :goto_1
    if-eqz v3, :cond_5

    .line 91
    invoke-static {p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    return-object v6

    .line 87
    .end local v2    # "enforcedByDeviceOwner":Z
    .end local v3    # "enforcedByProfileOwner":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "enforcedByProfileOwner":Z
    goto :goto_0

    .line 89
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "enforcedByDeviceOwner":Z
    goto :goto_1

    .line 92
    :cond_5
    if-eqz v2, :cond_7

    .line 95
    invoke-static {p0}, Lcom/android/settings_exlib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 96
    .local v0, "deviceOwner":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget v6, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    if-ne v6, p2, :cond_6

    .end local v0    # "deviceOwner":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :goto_2
    return-object v0

    .line 98
    .restart local v0    # "deviceOwner":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_6
    sget-object v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_2

    .line 100
    .end local v0    # "deviceOwner":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_7
    return-object v7
.end method

.method public static checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 191
    const-string/jumbo v4, "no_control_apps"

    .line 190
    invoke-static {p0, v4, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 192
    .local v0, "allAppsControlDisallowedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 193
    return-object v0

    .line 196
    :cond_0
    const-string/jumbo v4, "no_uninstall_apps"

    .line 195
    invoke-static {p0, v4, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 197
    .local v1, "allAppsUninstallDisallowedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v1, :cond_1

    .line 198
    return-object v1

    .line 200
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 202
    .local v3, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v3, p1, p2}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    invoke-static {p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 205
    :catch_0
    move-exception v2

    .line 208
    :cond_2
    return-object v5
.end method

.method public static getDeviceOwner(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 539
    const-string/jumbo v2, "device_policy"

    .line 538
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 540
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    .line 541
    return-object v3

    .line 543
    :cond_0
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 544
    .local v0, "adminComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 545
    new-instance v2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 547
    :cond_1
    return-object v3
.end method

.method private static getManagedProfileId(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 314
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 315
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 316
    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 317
    .local v0, "uInfo":Landroid/content/pm/UserInfo;
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, p1, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    return v4

    .line 324
    .end local v0    # "uInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v4, -0x2710

    return v4
.end method

.method public static getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 516
    const/16 v2, -0x2710

    if-ne p1, v2, :cond_0

    .line 517
    return-object v3

    .line 520
    :cond_0
    const-string/jumbo v2, "device_policy"

    .line 519
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 521
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_1

    .line 522
    return-object v3

    .line 524
    :cond_1
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 525
    .local v0, "adminComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 526
    new-instance v2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v0, p1}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 528
    :cond_2
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 529
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_3

    .line 531
    new-instance v2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v0, p1}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 534
    :cond_3
    return-object v3
.end method

.method private static getProfileOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 551
    const/16 v2, -0x2710

    if-ne p1, v2, :cond_0

    .line 552
    return-object v3

    .line 555
    :cond_0
    const-string/jumbo v2, "device_policy"

    .line 554
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 556
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_1

    .line 557
    return-object v3

    .line 559
    :cond_1
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 560
    .local v0, "adminComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 561
    new-instance v2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v0, p1}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    .line 563
    :cond_2
    return-object v3
.end method

.method public static getRestrictedPadlock(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 51
    sget v2, Lcom/android/settings_exlib/R$drawable;->ic_info:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 52
    .local v1, "restrictedPadlock":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    sget v3, Lcom/android/settings_exlib/R$dimen;->restricted_icon_size:I

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 54
    .local v0, "iconSize":I
    invoke-virtual {v1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    return-object v1
.end method

.method public static getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "admin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 628
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 630
    iget-object v2, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 631
    const-string/jumbo v2, "android.app.extra.DEVICE_ADMIN"

    iget-object v3, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 633
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 634
    .local v0, "adminUserId":I
    iget v2, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    .line 635
    iget v0, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 637
    :cond_1
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    .end local v0    # "adminUserId":I
    :cond_2
    return-object v1
.end method

.method public static hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 105
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 106
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public static isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 654
    const-string/jumbo v4, "device_policy"

    .line 653
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 655
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 656
    .local v1, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 657
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1, v4}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 658
    const/4 v4, 0x1

    return v4

    .line 661
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 643
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 644
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 645
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_0

    .line 646
    const/4 v3, 0x1

    return v3

    .line 649
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private static removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V
    .locals 10
    .param p0, "sb"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 599
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 600
    .local v3, "length":I
    add-int/lit8 v8, v3, -0x1

    .line 601
    const-class v9, Lcom/android/settings_exlib/RestrictedLockImageSpan;

    .line 600
    invoke-virtual {p0, v8, v3, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/settings_exlib/RestrictedLockImageSpan;

    .line 602
    .local v2, "imageSpans":[Lcom/android/settings_exlib/RestrictedLockImageSpan;
    array-length v9, v2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v5, v2, v8

    .line 603
    .local v5, "span":Landroid/text/style/ImageSpan;
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 604
    .local v6, "start":I
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 605
    .local v1, "end":I
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 606
    invoke-virtual {p0, v6, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 602
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 608
    .end local v1    # "end":I
    .end local v5    # "span":Landroid/text/style/ImageSpan;
    .end local v6    # "start":I
    :cond_0
    const-class v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 609
    .local v0, "colorSpans":[Landroid/text/style/ForegroundColorSpan;
    array-length v8, v0

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v4, v0, v7

    .line 610
    .local v4, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 609
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 598
    .end local v4    # "span":Landroid/text/style/ForegroundColorSpan;
    :cond_1
    return-void
.end method

.method public static sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "admin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 618
    invoke-static {p0, p1}, Lcom/android/settings_exlib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v0

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 620
    .local v1, "targetUserId":I
    if-eqz p1, :cond_0

    iget v2, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    .line 621
    iget v2, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-static {p0, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v2

    .line 620
    if-eqz v2, :cond_0

    .line 622
    iget v1, p1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 624
    :cond_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 617
    return-void
.end method

.method public static setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "admin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x21

    .line 575
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 576
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    .line 578
    if-eqz p2, :cond_0

    .line 579
    sget v3, Lcom/android/settings_exlib/R$color;->disabled_text_color:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 580
    .local v0, "disabledColor":I
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 582
    new-instance v1, Lcom/android/settings_exlib/RestrictedLockImageSpan;

    invoke-direct {v1, p0}, Lcom/android/settings_exlib/RestrictedLockImageSpan;-><init>(Landroid/content/Context;)V

    .line 583
    .local v1, "image":Landroid/text/style/ImageSpan;
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 585
    new-instance v3, Lcom/android/settings_exlib/RestrictedLockUtils$1;

    invoke-direct {v3, p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils$1;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 595
    .end local v0    # "disabledColor":I
    .end local v1    # "image":Landroid/text/style/ImageSpan;
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 574
    return-void

    .line 593
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "disabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 682
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 683
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    .line 684
    if-eqz p2, :cond_0

    .line 685
    sget v2, Lcom/android/settings_exlib/R$color;->disabled_text_color:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 686
    .local v0, "disabledColor":I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 687
    const/16 v5, 0x21

    .line 686
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 688
    invoke-static {p0}, Lcom/android/settings_exlib/RestrictedLockUtils;->getRestrictedPadlock(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v6, v6, v2, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 689
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 690
    sget v3, Lcom/android/settings_exlib/R$dimen;->restricted_icon_padding:I

    .line 689
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 694
    .end local v0    # "disabledColor":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    return-void

    .line 692
    :cond_0
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setTextViewPadlock(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "showPadlock"    # Z

    .prologue
    .line 666
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 667
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    .line 668
    if-eqz p2, :cond_0

    .line 669
    new-instance v0, Lcom/android/settings_exlib/RestrictedLockImageSpan;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/RestrictedLockImageSpan;-><init>(Landroid/content/Context;)V

    .line 670
    .local v0, "image":Landroid/text/style/ImageSpan;
    const-string/jumbo v2, " "

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 672
    .end local v0    # "image":Landroid/text/style/ImageSpan;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    return-void
.end method
