.class public Lcom/oneplus/media/OnePlusXMP;
.super Ljava/lang/Object;
.source "OnePlusXMP.java"


# static fields
.field public static final CAPTURE_MODE_MANUAL:Ljava/lang/String; = "Manual"

.field public static final CAPTURE_MODE_PANORAMA:Ljava/lang/String; = "Panorama"

.field public static final KEY_CAPTURE_MODE:Lcom/oneplus/media/XMPPropertyKey;

.field public static final KEY_IS_HDR_ACTIVE:Lcom/oneplus/media/XMPPropertyKey;

.field public static final KEY_LENS_FACING:Lcom/oneplus/media/XMPPropertyKey;

.field public static final KEY_SCENE:Lcom/oneplus/media/XMPPropertyKey;

.field public static final LENS_FACING_BACK:Ljava/lang/String; = "Back"

.field public static final LENS_FACING_FRONT:Ljava/lang/String; = "Front"

.field public static final NAMESPACE:Ljava/lang/String; = "http://ns.oneplus.com/media/1.0"

.field public static final PREFIX:Ljava/lang/String; = "OPMedia"

.field public static final SCENE_AUTO:Ljava/lang/String; = "Auto"

.field public static final SCENE_AUTO_HDR:Ljava/lang/String; = "AutoHDR"

.field public static final SCENE_CLEAR_SHOT:Ljava/lang/String; = "ClearShot"

.field public static final SCENE_FACE_BEAUTY:Ljava/lang/String; = "FaceBeauty"

.field public static final SCENE_HDR:Ljava/lang/String; = "HDR"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v1, Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "http://ns.oneplus.com/media/1.0"

    const-string/jumbo v3, "CaptureMode"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/media/XMPPropertyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/media/OnePlusXMP;->KEY_CAPTURE_MODE:Lcom/oneplus/media/XMPPropertyKey;

    .line 29
    new-instance v1, Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "http://ns.oneplus.com/media/1.0"

    const-string/jumbo v3, "IsHDRActive"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/media/XMPPropertyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/media/OnePlusXMP;->KEY_IS_HDR_ACTIVE:Lcom/oneplus/media/XMPPropertyKey;

    .line 37
    new-instance v1, Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "http://ns.oneplus.com/media/1.0"

    const-string/jumbo v3, "LensFacing"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/media/XMPPropertyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/media/OnePlusXMP;->KEY_LENS_FACING:Lcom/oneplus/media/XMPPropertyKey;

    .line 48
    new-instance v1, Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "http://ns.oneplus.com/media/1.0"

    const-string/jumbo v3, "Scene"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/media/XMPPropertyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/media/OnePlusXMP;->KEY_SCENE:Lcom/oneplus/media/XMPPropertyKey;

    .line 94
    const-class v1, Lcom/oneplus/media/OnePlusXMP;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/media/OnePlusXMP;->TAG:Ljava/lang/String;

    .line 103
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string/jumbo v2, "http://ns.oneplus.com/media/1.0"

    const-string/jumbo v3, "OPMedia"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 106
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 107
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/oneplus/media/OnePlusXMP;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error to register namespace"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
