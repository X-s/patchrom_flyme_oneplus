.class final Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityResultHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "callback"    # Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 668
    const-string/jumbo v0, "ActivityResult"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 669
    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$ActivityResultHandle;->callback:Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    .line 666
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 673
    return-void
.end method
