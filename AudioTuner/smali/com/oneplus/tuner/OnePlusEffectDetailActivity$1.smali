.class Lcom/oneplus/tuner/OnePlusEffectDetailActivity$1;
.super Ljava/lang/Object;
.source "OnePlusEffectDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusEffectDetailActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusEffectDetailActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusEffectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusEffectDetailActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusEffectDetailActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OnePlusEffectDetailActivity;->finish()V

    .line 70
    return-void
.end method
