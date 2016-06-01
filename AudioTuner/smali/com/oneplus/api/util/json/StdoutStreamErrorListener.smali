.class public Lcom/oneplus/api/util/json/StdoutStreamErrorListener;
.super Lcom/oneplus/api/util/json/BufferErrorListener;
.source "StdoutStreamErrorListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/oneplus/api/util/json/BufferErrorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/oneplus/api/util/json/StdoutStreamErrorListener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 7
    return-void
.end method
