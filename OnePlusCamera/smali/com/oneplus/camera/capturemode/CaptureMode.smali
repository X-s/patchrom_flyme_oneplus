.class public interface abstract Lcom/oneplus/camera/capturemode/CaptureMode;
.super Ljava/lang/Object;
.source "CaptureMode.java"

# interfaces
.implements Lcom/oneplus/camera/Mode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/camera/Mode",
        "<",
        "Lcom/oneplus/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID:Lcom/oneplus/camera/capturemode/CaptureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/camera/capturemode/InvalidCaptureMode;

    invoke-direct {v0}, Lcom/oneplus/camera/capturemode/InvalidCaptureMode;-><init>()V

    sput-object v0, Lcom/oneplus/camera/capturemode/CaptureMode;->INVALID:Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract getCaptureModeMediaType()Lcom/oneplus/camera/media/MediaType;
.end method

.method public abstract getCustomSettings()Lcom/oneplus/base/Settings;
.end method

.method public abstract getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getShortcutInfo()Landroid/content/pm/ShortcutInfo;
.end method

.method public abstract isSimpleCaptureMode()Z
.end method
