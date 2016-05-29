.class public Lcom/android/settings_ex/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/BatteryEntry$1;,
        Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;,
        Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;
    }
.end annotation


# static fields
.field public static final MSG_REPORT_FULLY_DRAWN:I = 0x2

.field public static final MSG_UPDATE_NAME_ICON:I = 0x1

.field static final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

.field static sHandler:Landroid/os/Handler;

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final context:Landroid/content/Context;

.field public defaultPackageName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconId:I

.field public name:Ljava/lang/String;

.field public final sipper:Lcom/android/internal/os/BatterySipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "um"    # Landroid/os/UserManager;
    .param p4, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    const v4, 0x7f020065

    const v3, 0x7f02004c

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sput-object p2, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    .line 133
    iput-object p4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    .line 134
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$1;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v2, p4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 186
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    if-lez v1, :cond_0

    .line 187
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V

    .line 192
    :cond_2
    return-void

    .line 136
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 137
    const v1, 0x7f020072

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 141
    const v1, 0x7f020060

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 145
    const v1, 0x7f02007a

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 148
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 149
    const v1, 0x7f02007d

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 152
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 153
    const v1, 0x7f02005b

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 156
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 157
    iput v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 160
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 161
    iput v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 164
    :pswitch_7
    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 167
    :pswitch_8
    iget v1, p4, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 168
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_3

    .line 169
    invoke-static {p1, p3, v0}, Lcom/android/settings_ex/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-static {p1, v0}, Lcom/android/settings_ex/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090665

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 178
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 179
    iput v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 182
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 183
    iput v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static clearUidCache()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    return-void
.end method

.method public static startRequestQueue()V
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 88
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 93
    :cond_0
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 94
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->setPriority(I)V

    .line 95
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->start()V

    .line 96
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 98
    :cond_1
    monitor-exit v1

    .line 100
    :cond_2
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopRequestQueue()V
    .locals 2

    .prologue
    .line 103
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 109
    :cond_0
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method findAppName(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 11
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "defaultPackageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/4 v10, 0x0

    .line 206
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 207
    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 208
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v8, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-nez v8, :cond_0

    .line 209
    const-string v8, ""

    iput-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 246
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v8, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    new-array v5, v8, [Ljava/lang/String;

    .line 213
    .local v5, "packageLabels":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v8, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v9, v9, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v8, v10, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 215
    .local v7, "userId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v5

    if-ge v1, v8, :cond_3

    .line 217
    :try_start_0
    aget-object v8, v5, v1

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 219
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    .line 215
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 223
    .local v3, "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    .line 224
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 226
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 230
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v2, p2, v8, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 231
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 232
    const/4 v8, 0x0

    aget-object v8, v5, v8

    iput-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 243
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v8

    .line 245
    :cond_4
    const-string v8, ""

    iput-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 235
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_5
    if-eqz v6, :cond_4

    :try_start_2
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_4

    .line 236
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 238
    .local v4, "nm":Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    .line 239
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V
    .locals 7
    .param p1, "uidObj"    # Landroid/os/BatteryStats$Uid;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    .line 250
    .local v2, "uid":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "uidString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 252
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget-object v5, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 253
    sget-object v5, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;

    .line 254
    .local v4, "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    iget-object v5, v4, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 257
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v2}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->findAppName(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 258
    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    iget-object v5, v4, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 262
    :goto_0
    iget-object v5, v4, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 285
    .end local v4    # "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    :cond_0
    :goto_1
    return-void

    .line 261
    .restart local v4    # "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    goto :goto_0

    .line 265
    .end local v4    # "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    :cond_2
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "packages":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 267
    if-nez v0, :cond_5

    .line 269
    if-nez v2, :cond_4

    .line 270
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 274
    :cond_3
    :goto_2
    const v5, 0x7f02004c

    iput v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    .line 275
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    iget v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 271
    :cond_4
    const-string v5, "mediaserver"

    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_2

    .line 280
    :cond_5
    sget-object v5, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 281
    sget-object v6, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 282
    :try_start_0
    sget-object v5, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public loadNameAndIcon()V
    .locals 26

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 296
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v18

    .line 297
    .local v18, "uid":I
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 298
    .local v6, "defaultActivityIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 300
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 304
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v14, v0, [Ljava/lang/String;

    .line 305
    .local v14, "packageLabels":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 309
    .local v10, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    .line 310
    .local v20, "userId":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v8, v0, :cond_6

    .line 312
    :try_start_0
    aget-object v22, v14, v8

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-interface {v10, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 314
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_4

    .line 315
    const-string v22, "PowerUsageSummary"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Retrieving null app info for package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v14, v8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 319
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 320
    .local v11, "label":Ljava/lang/CharSequence;
    if-eqz v11, :cond_5

    .line 321
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v14, v8

    .line 323
    :cond_5
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 325
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "label":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_7

    .line 334
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 337
    :cond_7
    array-length v0, v14

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 338
    const/16 v22, 0x0

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 367
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 368
    .local v19, "uidString":Ljava/lang/String;
    new-instance v21, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;

    invoke-direct/range {v21 .. v21}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;-><init>()V

    .line 369
    .local v21, "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    .line 372
    sget-object v22, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v22, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v22, :cond_0

    .line 374
    sget-object v22, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    sget-object v23, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 328
    .end local v19    # "uidString":Ljava/lang/String;
    .end local v21    # "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    :catch_0
    move-exception v7

    .line 329
    .local v7, "e":Landroid/os/RemoteException;
    const-string v22, "PowerUsageSummary"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error while retrieving app info for package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v14, v8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 341
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_4
    if-ge v9, v12, :cond_8

    aget-object v16, v5, v9

    .line 343
    .local v16, "pkgName":Ljava/lang/String;
    const/16 v22, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-interface {v10, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 344
    .local v15, "pi":Landroid/content/pm/PackageInfo;
    if-nez v15, :cond_b

    .line 345
    const-string v22, "PowerUsageSummary"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Retrieving null package info for package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v15    # "pi":Landroid/content/pm/PackageInfo;
    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 349
    .restart local v15    # "pi":Landroid/content/pm/PackageInfo;
    :cond_b
    iget v0, v15, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 350
    iget v0, v15, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v22, v0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 352
    .local v13, "nm":Ljava/lang/CharSequence;
    if-eqz v13, :cond_a

    .line 353
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 354
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 355
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 356
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 361
    .end local v13    # "nm":Ljava/lang/CharSequence;
    .end local v15    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v7

    .line 362
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v22, "PowerUsageSummary"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error while retrieving package info for package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
