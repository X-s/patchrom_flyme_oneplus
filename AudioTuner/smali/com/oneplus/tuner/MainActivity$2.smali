.class Lcom/oneplus/tuner/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MainActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MainActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oneplus/tuner/MainActivity$2;->this$0:Lcom/oneplus/tuner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 154
    new-instance v0, Lcom/oneplus/tuner/MainActivity$2$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MainActivity$2$1;-><init>(Lcom/oneplus/tuner/MainActivity$2;)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method
