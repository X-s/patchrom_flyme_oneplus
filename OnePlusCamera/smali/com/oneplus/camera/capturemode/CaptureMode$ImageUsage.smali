.class public final enum Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;
.super Ljava/lang/Enum;
.source "CaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/capturemode/CaptureMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

.field public static final enum CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    const-string v1, "CAPTURE_MODES_PANEL_ICON"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->$VALUES:[Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->$VALUES:[Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v0}, [Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    return-object v0
.end method
