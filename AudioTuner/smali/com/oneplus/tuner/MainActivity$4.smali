.class Lcom/oneplus/tuner/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 238
    iput-object p1, p0, Lcom/oneplus/tuner/MainActivity$4;->this$0:Lcom/oneplus/tuner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity$4;->this$0:Lcom/oneplus/tuner/MainActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MainActivity;->mPersonalView:Lcom/oneplus/tuner/view/PersonalView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity$4;->this$0:Lcom/oneplus/tuner/MainActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/MainActivity;->mPersonalView:Lcom/oneplus/tuner/view/PersonalView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/PersonalView;->tryToLogin()V

    .line 244
    :cond_0
    return-void
.end method
