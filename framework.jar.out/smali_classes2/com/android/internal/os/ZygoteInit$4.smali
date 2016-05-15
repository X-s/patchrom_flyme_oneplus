.class final Lcom/android/internal/os/ZygoteInit$4;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preloadResourceAndClassess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runtime:Ldalvik/system/VMRuntime;


# direct methods
.method constructor <init>(Ldalvik/system/VMRuntime;)V
    .locals 0

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$4;->val$runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1075
    const/16 v0, 0x3e8

    const/16 v1, 0x7d0

    iget-object v2, p0, Lcom/android/internal/os/ZygoteInit$4;->val$runtime:Ldalvik/system/VMRuntime;

    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadOemClasses(IILdalvik/system/VMRuntime;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/os/ZygoteInit;->access$200(IILdalvik/system/VMRuntime;)V

    .line 1076
    return-void
.end method
