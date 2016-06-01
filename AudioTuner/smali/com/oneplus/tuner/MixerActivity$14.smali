.class Lcom/oneplus/tuner/MixerActivity$14;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity;->showDetailDialog()V
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
    .line 1034
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$14;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$14;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mDialog:Lcom/oneplus/uc/UcAlertDialog;
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$2000(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/uc/UcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/uc/UcAlertDialog;->dismiss()V

    .line 1039
    return-void
.end method
