.class public Lcom/android/settings_exlib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final LOCATION_OPS:[I

.field private static final RECENT_TIME_INTERVAL_MILLIS:I = 0xdbba0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/android/settings_exlib/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_exlib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    .line 45
    const/16 v0, 0x29

    .line 46
    const/16 v1, 0x2a

    .line 44
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_exlib/location/RecentLocationApps;->LOCATION_OPS:[I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings_exlib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 52
    return-void
.end method

.method private getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    .locals 27
    .param p1, "now"    # J
    .param p3, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    .prologue
    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v13

    .line 106
    .local v13, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v7, 0x0

    .line 107
    .local v7, "highBattery":Z
    const/16 v17, 0x0

    .line 109
    .local v17, "normalBattery":Z
    const-wide/32 v24, 0xdbba0

    sub-long v18, p1, v24

    .line 110
    .local v18, "recentLocationCutoffTime":J
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    .line 111
    .local v14, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v24

    cmp-long v9, v24, v18

    if-ltz v9, :cond_0

    .line 112
    :cond_1
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    const/16 v17, 0x1

    .line 115
    goto :goto_0

    .line 117
    :pswitch_1
    const/4 v7, 0x1

    .line 118
    goto :goto_0

    .line 125
    .end local v14    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    if-nez v7, :cond_3

    if-eqz v17, :cond_4

    .line 134
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v21

    .line 135
    .local v21, "uid":I
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 137
    .local v22, "userId":I
    const/16 v20, 0x0

    .line 139
    .local v20, "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 141
    .local v16, "ipm":Landroid/content/pm/IPackageManager;
    const/16 v9, 0x80

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v3, v9, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 142
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v11, :cond_6

    .line 143
    sget-object v9, Lcom/android/settings_exlib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Null application info retrieved for package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 144
    const-string/jumbo v24, ", userId "

    .line 143
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v9, 0x0

    return-object v9

    .line 126
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v20    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    .end local v21    # "uid":I
    .end local v22    # "userId":I
    :cond_4
    sget-object v9, Lcom/android/settings_exlib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-static {v9, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 127
    sget-object v9, Lcom/android/settings_exlib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " hadn\'t used location within the time interval."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_5
    const/4 v9, 0x0

    return-object v9

    .line 148
    .restart local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    .restart local v21    # "uid":I
    .restart local v22    # "userId":I
    :cond_6
    :try_start_1
    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 149
    .local v4, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_exlib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 150
    .local v10, "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_exlib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 151
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_exlib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 152
    .local v6, "appLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_exlib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v6, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 153
    .local v8, "badgedAppLabel":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 156
    const/4 v8, 0x0

    .line 158
    .end local v8    # "badgedAppLabel":Ljava/lang/CharSequence;
    :cond_7
    new-instance v2, Lcom/android/settings_exlib/location/RecentLocationApps$Request;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_exlib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Lcom/android/settings_exlib/location/RecentLocationApps$Request;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "appLabel":Ljava/lang/CharSequence;
    .end local v10    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v20    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    .local v2, "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    :goto_1
    return-object v2

    .line 160
    .end local v2    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    .restart local v20    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    :catch_0
    move-exception v12

    .line 161
    .local v12, "e":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/settings_exlib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Error while retrieving application info for package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 162
    const-string/jumbo v24, ", userId "

    .line 161
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v2, v20

    .restart local v2    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "appops"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 64
    .local v2, "aoManager":Landroid/app/AppOpsManager;
    sget-object v17, Lcom/android/settings_exlib/location/RecentLocationApps;->LOCATION_OPS:[I

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    .line 66
    .local v3, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 69
    .local v4, "appOpsCount":I
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v13, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/location/RecentLocationApps$Request;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 71
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "user"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 72
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v11

    .line 74
    .local v11, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 75
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 78
    .local v7, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    .line 80
    .local v14, "uid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 82
    .local v16, "userId":I
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ne v14, v0, :cond_2

    const-string/jumbo v17, "android"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 83
    .local v6, "isAndroidOs":Z
    :goto_2
    if-nez v6, :cond_0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 86
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/android/settings_exlib/location/RecentLocationApps;->getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settings_exlib/location/RecentLocationApps$Request;

    move-result-object v12

    .line 87
    .local v12, "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    if-eqz v12, :cond_0

    .line 88
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v12    # "request":Lcom/android/settings_exlib/location/RecentLocationApps$Request;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    .end local v4    # "appOpsCount":I
    .end local v5    # "i":I
    .end local v6    # "isAndroidOs":Z
    .end local v7    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v8    # "now":J
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/location/RecentLocationApps$Request;>;"
    .end local v14    # "uid":I
    .end local v15    # "um":Landroid/os/UserManager;
    .end local v16    # "userId":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "appOpsCount":I
    goto :goto_0

    .line 82
    .restart local v5    # "i":I
    .restart local v7    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .restart local v8    # "now":J
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/location/RecentLocationApps$Request;>;"
    .restart local v14    # "uid":I
    .restart local v15    # "um":Landroid/os/UserManager;
    .restart local v16    # "userId":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 92
    .end local v7    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v16    # "userId":I
    :cond_3
    return-object v13
.end method
