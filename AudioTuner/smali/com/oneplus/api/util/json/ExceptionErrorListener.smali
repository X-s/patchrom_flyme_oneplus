.class public Lcom/oneplus/api/util/json/ExceptionErrorListener;
.super Lcom/oneplus/api/util/json/BufferErrorListener;
.source "ExceptionErrorListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/oneplus/api/util/json/BufferErrorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;I)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "col"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/oneplus/api/util/json/BufferErrorListener;->error(Ljava/lang/String;I)V

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/oneplus/api/util/json/ExceptionErrorListener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
