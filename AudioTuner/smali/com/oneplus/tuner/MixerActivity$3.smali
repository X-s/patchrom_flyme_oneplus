.class Lcom/oneplus/tuner/MixerActivity$3;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MixerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MixerActivity;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$3;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$3;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 381
    return-void
.end method
