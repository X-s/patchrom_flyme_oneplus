.class final Lcom/oneplus/base/OrientationManager$CallbackHandle;
.super Lcom/oneplus/base/Handle;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/base/OrientationManager$Callback;

.field public final handler:Lcom/oneplus/base/OrientationManager$CallbackHandler;


# direct methods
.method public constructor <init>(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/base/OrientationManager$Callback;
    .param p2, "srcHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 147
    const-string/jumbo v1, "OrientationCallback"

    invoke-direct {p0, v1}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/oneplus/base/OrientationManager$CallbackHandle;->callback:Lcom/oneplus/base/OrientationManager$Callback;

    .line 149
    if-eqz p2, :cond_0

    new-instance v0, Lcom/oneplus/base/OrientationManager$CallbackHandler;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/base/OrientationManager$CallbackHandler;-><init>(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)V

    :cond_0
    iput-object v0, p0, Lcom/oneplus/base/OrientationManager$CallbackHandle;->handler:Lcom/oneplus/base/OrientationManager$CallbackHandler;

    .line 145
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 155
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->-wrap4(Lcom/oneplus/base/OrientationManager$CallbackHandle;)V

    .line 153
    return-void
.end method
