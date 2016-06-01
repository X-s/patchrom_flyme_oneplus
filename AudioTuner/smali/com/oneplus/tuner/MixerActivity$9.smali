.class Lcom/oneplus/tuner/MixerActivity$9;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity;->onHeadsetPlugged()V
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
    .line 771
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$9;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$9;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MixerActivity;->reset()V

    .line 776
    return-void
.end method
