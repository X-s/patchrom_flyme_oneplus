.class Lcom/oneplus/camera/ui/ActionChooser$1;
.super Ljava/lang/Object;
.source "ActionChooser.java"

# interfaces
.implements Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ActionChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ActionChooser;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ActionChooser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ActionChooser;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/camera/ui/ActionChooser$1;->this$0:Lcom/oneplus/camera/ui/ActionChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/ui/ActionChooser$1;->this$0:Lcom/oneplus/camera/ui/ActionChooser;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/camera/ui/ActionChooser;->-wrap0(Lcom/oneplus/camera/ui/ActionChooser;Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    .line 36
    return-void
.end method
