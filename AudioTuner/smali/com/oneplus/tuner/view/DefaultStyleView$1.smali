.class Lcom/oneplus/tuner/view/DefaultStyleView$1;
.super Ljava/lang/Object;
.source "DefaultStyleView.java"

# interfaces
.implements Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/view/DefaultStyleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/view/DefaultStyleView;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/view/DefaultStyleView;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oneplus/tuner/view/DefaultStyleView$1;->this$0:Lcom/oneplus/tuner/view/DefaultStyleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnHide()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView$1;->this$0:Lcom/oneplus/tuner/view/DefaultStyleView;

    iget-object v0, v0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/oneplus/tuner/view/DefaultStyleView$1;->this$0:Lcom/oneplus/tuner/view/DefaultStyleView;

    iget-object v0, v0, Lcom/oneplus/tuner/view/DefaultStyleView;->mDefaultStyleLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :cond_0
    return-void
.end method
