.class Lcom/oneplus/tuner/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MainActivity;->showMyConfig()V
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
    .line 467
    iput-object p1, p0, Lcom/oneplus/tuner/MainActivity$7;->this$0:Lcom/oneplus/tuner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity$7;->this$0:Lcom/oneplus/tuner/MainActivity;

    # getter for: Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;
    invoke-static {v0}, Lcom/oneplus/tuner/MainActivity;->access$200(Lcom/oneplus/tuner/MainActivity;)Lcom/oneplus/tuner/fragment/MyConfigFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity$7;->this$0:Lcom/oneplus/tuner/MainActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/MainActivity;->hideFlipper()Z

    .line 475
    :cond_0
    return-void
.end method
