.class Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler$1;
.super Ljava/lang/Object;
.source "BitmapPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;


# direct methods
.method constructor <init>(Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler$1;->this$1:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler$1;->this$1:Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;

    invoke-static {v0}, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->-wrap0(Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;)V

    .line 196
    return-void
.end method
