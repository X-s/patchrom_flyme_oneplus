.class final Lcom/google/protobuf/RpcUtil$1;
.super Ljava/lang/Object;
.source "RpcUtil.java"

# interfaces
.implements Lcom/google/protobuf/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/RpcUtil;->generalizeCallback(Lcom/google/protobuf/RpcCallback;Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/RpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/RpcCallback",
        "<",
        "Lcom/google/protobuf/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defaultInstance:Lcom/google/protobuf/Message;

.field final synthetic val$originalCallback:Lcom/google/protobuf/RpcCallback;

.field final synthetic val$originalClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/google/protobuf/Message;Lcom/google/protobuf/RpcCallback;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/protobuf/RpcUtil$1;->val$originalClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/protobuf/RpcUtil$1;->val$defaultInstance:Lcom/google/protobuf/Message;

    iput-object p3, p0, Lcom/google/protobuf/RpcUtil$1;->val$originalCallback:Lcom/google/protobuf/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/protobuf/Message;)V
    .locals 3
    .param p1, "parameter"    # Lcom/google/protobuf/Message;

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/google/protobuf/RpcUtil$1;->val$originalClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v1, "typedParameter":Lcom/google/protobuf/Message;, "TType;"
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/RpcUtil$1;->val$originalCallback:Lcom/google/protobuf/RpcCallback;

    invoke-interface {v2, v1}, Lcom/google/protobuf/RpcCallback;->run(Ljava/lang/Object;)V

    .line 82
    return-void

    .line 78
    .end local v1    # "typedParameter":Lcom/google/protobuf/Message;, "TType;"
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ignored":Ljava/lang/ClassCastException;
    iget-object v2, p0, Lcom/google/protobuf/RpcUtil$1;->val$defaultInstance:Lcom/google/protobuf/Message;

    # invokes: Lcom/google/protobuf/RpcUtil;->copyAsType(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;
    invoke-static {v2, p1}, Lcom/google/protobuf/RpcUtil;->access$000(Lcom/google/protobuf/Message;Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message;

    move-result-object v1

    .restart local v1    # "typedParameter":Lcom/google/protobuf/Message;, "TType;"
    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lcom/google/protobuf/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/protobuf/RpcUtil$1;->run(Lcom/google/protobuf/Message;)V

    return-void
.end method
