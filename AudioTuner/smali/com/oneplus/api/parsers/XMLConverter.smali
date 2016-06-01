.class Lcom/oneplus/api/parsers/XMLConverter;
.super Ljava/lang/Object;
.source "XMLConverter.java"

# interfaces
.implements Lcom/oneplus/api/parsers/Converter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/oneplus/api/OneplusResponse;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/api/OneplusResponse;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "response":Lcom/oneplus/api/OneplusResponse;, "TT;"
    return-void
.end method
