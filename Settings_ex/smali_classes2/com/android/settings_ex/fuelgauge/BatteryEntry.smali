.class public Lcom/android/settings_ex/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;,
        Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I = null

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
.method private static synthetic -getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "um"    # Landroid/os/UserManager;
    .param p4, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    const v5, 0x7f02014d

    const v4, 0x7f020130

    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sput-object p2, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    .line 136
    if-nez p1, :cond_0

    .line 137
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    .line 141
    iput-object p4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    .line 142
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 198
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    if-lez v1, :cond_1

    .line 199
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getQuickNameIconForUid(I)V

    .line 133
    :cond_3
    return-void

    .line 144
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b7c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 145
    const v1, 0x7f02015a

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b7a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 149
    const v1, 0x7f020148

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b7b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 153
    const v1, 0x7f020166

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 156
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b78

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 157
    const v1, 0x7f020167

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 160
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b79

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 161
    const v1, 0x7f020141

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 164
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b75

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 165
    iput v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 168
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b76

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 169
    iput v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 172
    :pswitch_7
    iget-object v1, p4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 175
    :pswitch_8
    iget v1, p4, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 176
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_4

    .line 177
    invoke-static {p1, p3, v0}, Lcom/android/settings_exlib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-static {p1, v0}, Lcom/android/settings_exlib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 180
    :cond_4
    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 182
    const v2, 0x7f0e0a72

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 186
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b7d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 187
    iput v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 190
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b7e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 191
    iput v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 194
    :pswitch_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0b77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 195
    const v1, 0x7f020147

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public static clearUidCache()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 115
    return-void
.end method

.method public static startRequestQueue()V
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 91
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 96
    :cond_0
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 97
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->setPriority(I)V

    .line 98
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->start()V

    .line 99
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 89
    :cond_2
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stopRequestQueue()V
    .locals 2

    .prologue
    .line 106
    sget-object v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestThread:Lcom/android/settings_ex/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method getQuickNameIconForUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "uidString":Ljava/lang/String;
    sget-object v3, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    sget-object v3, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;

    .line 224
    .local v2, "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    iget-object v3, v2, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 225
    iget-object v3, v2, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 226
    iget-object v3, v2, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void

    .line 230
    .end local v2    # "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 231
    return-void

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 235
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 236
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 237
    if-nez p1, :cond_5

    .line 238
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 244
    :cond_2
    :goto_0
    const v3, 0x7f020130

    iput v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    .line 245
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 251
    :cond_3
    sget-object v3, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 252
    sget-object v4, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 253
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 220
    :cond_4
    return-void

    .line 239
    :cond_5
    const-string/jumbo v3, "mediaserver"

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 240
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0bb3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_6
    const-string/jumbo v3, "dex2oat"

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0bb4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public loadNameAndIcon()V
    .locals 24

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 264
    return-void

    .line 267
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 268
    .local v13, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v14

    .line 269
    .local v14, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v18, v0

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/String;

    .line 272
    .local v10, "packageLabels":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 276
    .local v7, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 277
    .local v16, "userId":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    .line 279
    :try_start_0
    aget-object v18, v10, v6

    .line 280
    const/16 v19, 0x0

    .line 279
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-interface {v7, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 281
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_2

    .line 282
    const-string/jumbo v18, "PowerUsageSummary"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Retrieving null app info for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 283
    aget-object v20, v10, v6

    .line 282
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 283
    const-string/jumbo v20, ", user "

    .line 282
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 286
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    invoke-virtual {v4, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 287
    .local v8, "label":Ljava/lang/CharSequence;
    if-eqz v8, :cond_3

    .line 288
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v6

    .line 290
    :cond_3
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 292
    invoke-virtual {v4, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "label":Ljava/lang/CharSequence;
    :cond_4
    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 302
    const/16 v18, 0x0

    aget-object v18, v10, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 333
    .end local v6    # "i":I
    .end local v7    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v10    # "packageLabels":[Ljava/lang/String;
    .end local v16    # "userId":I
    :cond_5
    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 334
    .local v15, "uidString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e033f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 340
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 341
    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 344
    :cond_7
    new-instance v17, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;-><init>()V

    .line 345
    .local v17, "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    .line 348
    sget-object v18, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sUidCache:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v18, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v18, :cond_8

    .line 350
    sget-object v18, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    sget-object v19, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    :cond_8
    return-void

    .line 295
    .end local v15    # "uidString":Ljava/lang/String;
    .end local v17    # "utd":Lcom/android/settings_ex/fuelgauge/BatteryEntry$UidToDetail;
    .restart local v6    # "i":I
    .restart local v7    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "packageLabels":[Ljava/lang/String;
    .restart local v16    # "userId":I
    :catch_0
    move-exception v5

    .line 296
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v18, "PowerUsageSummary"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error while retrieving app info for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 297
    aget-object v20, v10, v6

    .line 296
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 297
    const-string/jumbo v20, ", user "

    .line 296
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 305
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    aget-object v12, v19, v18

    .line 307
    .local v12, "pkgName":Ljava/lang/String;
    const/16 v21, 0x0

    :try_start_1
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v7, v12, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 308
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    if-nez v11, :cond_b

    .line 309
    const-string/jumbo v21, "PowerUsageSummary"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Retrieving null package info for package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 310
    const-string/jumbo v23, ", user "

    .line 309
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    :cond_a
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 313
    .restart local v11    # "pi":Landroid/content/pm/PackageInfo;
    :cond_b
    iget v0, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 315
    iget v0, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v21, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    .line 314
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v12, v0, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 316
    .local v9, "nm":Ljava/lang/CharSequence;
    if-eqz v9, :cond_a

    .line 317
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 318
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 319
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 320
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 325
    .end local v9    # "nm":Ljava/lang/CharSequence;
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v5

    .line 326
    .restart local v5    # "e":Landroid/os/RemoteException;
    const-string/jumbo v21, "PowerUsageSummary"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error while retrieving package info for package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 327
    const-string/jumbo v23, ", user "

    .line 326
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
