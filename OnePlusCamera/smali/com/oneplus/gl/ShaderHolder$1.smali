.class Lcom/oneplus/gl/ShaderHolder$1;
.super Ljava/lang/Object;
.source "ShaderHolder.java"

# interfaces
.implements Lcom/oneplus/gl/EglContextManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gl/ShaderHolder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gl/ShaderHolder;


# direct methods
.method constructor <init>(Lcom/oneplus/gl/ShaderHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gl/ShaderHolder;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/gl/ShaderHolder$1;->this$0:Lcom/oneplus/gl/ShaderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEglContextDestroying()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/gl/ShaderHolder$1;->this$0:Lcom/oneplus/gl/ShaderHolder;

    invoke-static {v0}, Lcom/oneplus/gl/ShaderHolder;->-get0(Lcom/oneplus/gl/ShaderHolder;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 77
    return-void
.end method

.method public onEglContextReady()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
