.class Lcom/oneplus/camera/ui/OptionsPanelImpl$Item$1;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item$1;->this$1:Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item$1;->this$1:Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    iget-object v0, v0, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$Item$1;->this$1:Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->-wrap3(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanelImpl$Item;)V

    .line 132
    return-void
.end method
