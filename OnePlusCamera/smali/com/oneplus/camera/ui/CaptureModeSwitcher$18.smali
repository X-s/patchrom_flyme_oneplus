.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;
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
    .line 1371
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated(Landroid/view/View;Lcom/oneplus/base/Rotation;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0, p2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap13(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Rotation;)V

    .line 1377
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$18;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    .line 1373
    return-void
.end method
