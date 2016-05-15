.class final Lcom/android/internal/os/ZygoteInit$8;
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

.field final synthetic val$listLength:I

.field final synthetic val$runtime:Ldalvik/system/VMRuntime;

.field final synthetic val$secondEnd:I


# direct methods
.method constructor <init>(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$8;->val$runtime:Ldalvik/system/VMRuntime;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteInit$8;->val$drawable:Landroid/content/res/TypedArray;

    iput p3, p0, Lcom/android/internal/os/ZygoteInit$8;->val$secondEnd:I

    iput p4, p0, Lcom/android/internal/os/ZygoteInit$8;->val$listLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/internal/os/ZygoteInit$8;->val$runtime:Ldalvik/system/VMRuntime;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteInit$8;->val$drawable:Landroid/content/res/TypedArray;

    iget v2, p0, Lcom/android/internal/os/ZygoteInit$8;->val$secondEnd:I

    iget v3, p0, Lcom/android/internal/os/ZygoteInit$8;->val$listLength:I

    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadOemDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)I
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteInit;->access$300(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)I

    .line 1105
    return-void
.end method
