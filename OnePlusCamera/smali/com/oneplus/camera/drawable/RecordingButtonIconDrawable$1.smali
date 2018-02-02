.class Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable$1;
.super Ljava/lang/Object;
.source "RecordingButtonIconDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable$1;->this$0:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable$1;->this$0:Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;

    invoke-static {v0}, Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;->-wrap0(Lcom/oneplus/camera/drawable/RecordingButtonIconDrawable;)V

    .line 45
    return-void
.end method
