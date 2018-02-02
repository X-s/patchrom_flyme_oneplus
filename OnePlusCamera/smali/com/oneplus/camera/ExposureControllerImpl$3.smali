.class Lcom/oneplus/camera/ExposureControllerImpl$3;
.super Lcom/oneplus/base/Handle;
.source "ExposureControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ExposureControllerImpl;->lockAutoExposure(I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ExposureControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ExposureControllerImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ExposureControllerImpl;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oneplus/camera/ExposureControllerImpl$3;->this$0:Lcom/oneplus/camera/ExposureControllerImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl$3;->this$0:Lcom/oneplus/camera/ExposureControllerImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/ExposureControllerImpl;->-wrap4(Lcom/oneplus/camera/ExposureControllerImpl;Lcom/oneplus/base/Handle;)V

    .line 136
    return-void
.end method
