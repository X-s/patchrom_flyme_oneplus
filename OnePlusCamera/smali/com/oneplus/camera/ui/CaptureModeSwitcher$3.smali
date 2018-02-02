.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set10(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    .line 177
    return-void
.end method
