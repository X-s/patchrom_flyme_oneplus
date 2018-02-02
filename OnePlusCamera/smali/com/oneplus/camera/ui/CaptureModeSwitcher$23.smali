.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$23;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/camera/UIComponent$ViewRotationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->rotateItemsRotationContainer()V
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
    .line 1583
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$23;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated(Landroid/view/View;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$23;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0, p2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap17(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Rotation;)V

    .line 1589
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$23;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    .line 1591
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$23;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get24(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$23;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap10(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V

    .line 1585
    :cond_0
    return-void
.end method
