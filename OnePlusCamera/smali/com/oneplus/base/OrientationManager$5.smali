.class final Lcom/oneplus/base/OrientationManager$5;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/OrientationManager;->onAccRotationSettingsChangedInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "val$enabled"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/oneplus/base/OrientationManager$5;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/oneplus/base/OrientationManager$5;->val$enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/OrientationManager;->-wrap1(Ljava/lang/Boolean;)V

    .line 217
    return-void
.end method
