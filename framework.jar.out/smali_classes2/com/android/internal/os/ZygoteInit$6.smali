.class final Lcom/android/internal/os/ZygoteInit$6;
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
.field final synthetic val$drawable:Landroid/content/res/TypedArray;

.field final synthetic val$firstEnd:I

.field final synthetic val$runtime:Ldalvik/system/VMRuntime;


# direct methods
.method constructor <init>(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;I)V
    .locals 0

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$6;->val$runtime:Ldalvik/system/VMRuntime;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteInit$6;->val$drawable:Landroid/content/res/TypedArray;

    iput p3, p0, Lcom/android/internal/os/ZygoteInit$6;->val$firstEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInit$6;->val$runtime:Ldalvik/system/VMRuntime;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteInit$6;->val$drawable:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/os/ZygoteInit$6;->val$firstEnd:I

    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadOemDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)I
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteInit;->access$300(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)I

    .line 1093
    return-void
.end method
