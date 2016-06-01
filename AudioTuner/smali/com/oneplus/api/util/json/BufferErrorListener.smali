.class public Lcom/oneplus/api/util/json/BufferErrorListener;
.super Ljava/lang/Object;
.source "BufferErrorListener.java"

# interfaces
.implements Lcom/oneplus/api/util/json/JSONErrorListener;


# instance fields
.field protected buffer:Ljava/lang/StringBuffer;

.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lcom/oneplus/api/util/json/BufferErrorListener;-><init>(Ljava/lang/StringBuffer;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    .line 10
    return-void
.end method

.method private indent(ILjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "ret"    # Ljava/lang/StringBuffer;

    .prologue
    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 35
    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public error(Ljava/lang/String;I)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "col"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    iget-object v0, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    iget-object v0, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, " at column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    iget-object v0, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 26
    iget-object v0, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    iget-object v0, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->input:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    iget-object v0, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v0, p2, -0x1

    iget-object v1, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/api/util/json/BufferErrorListener;->indent(ILjava/lang/StringBuffer;)V

    .line 30
    iget-object v0, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->input:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/oneplus/api/util/json/BufferErrorListener;->buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 19
    return-void
.end method
