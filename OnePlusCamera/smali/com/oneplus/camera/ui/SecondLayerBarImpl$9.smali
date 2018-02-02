.class Lcom/oneplus/camera/ui/SecondLayerBarImpl$9;
.super Ljava/lang/Object;
.source "SecondLayerBarImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/SecondLayerBarImpl;->show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/SecondLayerBarImpl;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/SecondLayerBarImpl;
    .param p2, "val$child"    # Landroid/view/View;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl$9;->this$0:Lcom/oneplus/camera/ui/SecondLayerBarImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl$9;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl$9;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 217
    return-void
.end method
