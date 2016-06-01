.class Lcom/oneplus/tuner/OnePlusMoreActivity$4;
.super Ljava/lang/Object;
.source "OnePlusMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusMoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusMoreActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$4;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$4;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    const-class v2, Lcom/oneplus/tuner/OnePlusAboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$4;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/OnePlusMoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
