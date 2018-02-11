.class public Lcom/oneplus/settings/defaultapp/DefaultAppConstants;
.super Ljava/lang/Object;
.source "DefaultAppConstants.java"


# static fields
.field public static final DEFAULTAPP_VALUE_LIST_H2OS:[Ljava/lang/String;

.field public static final DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

.field public static final DEFAULTAPP_VALUE_LIST_O2OS:[Ljava/lang/String;

.field public static final KEY_DEFAULT_APP_TYPE:Ljava/lang/String; = "default_app_type"

.field public static final POSITION_DEFAULT_APP_CAMERA:I = 0x0

.field public static final POSITION_DEFAULT_APP_EMAIL:I = 0x3

.field public static final POSITION_DEFAULT_APP_GALLERY:I = 0x1

.field public static final POSITION_DEFAULT_APP_MUSIC:I = 0x2

.field public static final POSITION_DEFAULT_APP_NONE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "op_default_app_camera"

    aput-object v1, v0, v2

    const-string/jumbo v1, "op_default_app_gallery"

    aput-object v1, v0, v3

    const-string/jumbo v1, "op_default_app_music"

    aput-object v1, v0, v4

    const-string/jumbo v1, "op_default_app_email"

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 16
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "com.oneplus.camera"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.oneplus.gallery"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.netease.cloudmusic"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.netease.mobimail.oneplus"

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_H2OS:[Ljava/lang/String;

    .line 17
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "com.oneplus.camera"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.oneplus.gallery"

    aput-object v1, v0, v3

    const-string/jumbo v1, "net.oneplus.music"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.google.android.gm"

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_O2OS:[Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
