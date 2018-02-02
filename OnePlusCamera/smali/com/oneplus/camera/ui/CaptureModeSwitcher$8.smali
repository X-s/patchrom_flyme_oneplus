.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$8;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanelDirectly()V
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
    .line 784
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$8;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 789
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$8;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap10(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V

    .line 787
    return-void
.end method
