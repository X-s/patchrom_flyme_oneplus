.class Lcom/oneplus/tuner/MainActivity1$2;
.super Ljava/lang/Object;
.source "MainActivity1.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MainActivity1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MainActivity1;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MainActivity1;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oneplus/tuner/MainActivity1$2;->this$0:Lcom/oneplus/tuner/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 86
    new-instance v0, Lcom/oneplus/tuner/MainActivity1$2$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MainActivity1$2$1;-><init>(Lcom/oneplus/tuner/MainActivity1$2;)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method
