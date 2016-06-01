.class public Lcom/oneplus/api/util/json/JSONValidatingReader;
.super Lcom/oneplus/api/util/json/JSONReader;
.source "JSONValidatingReader.java"


# static fields
.field public static final INVALID:Ljava/lang/Object;


# instance fields
.field private validator:Lcom/oneplus/api/util/json/JSONValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/api/util/json/JSONValidatingReader;->INVALID:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/oneplus/api/util/json/StdoutStreamErrorListener;

    invoke-direct {v0}, Lcom/oneplus/api/util/json/StdoutStreamErrorListener;-><init>()V

    invoke-direct {p0, v0}, Lcom/oneplus/api/util/json/JSONValidatingReader;-><init>(Lcom/oneplus/api/util/json/JSONErrorListener;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/api/util/json/JSONErrorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/api/util/json/JSONErrorListener;

    .prologue
    .line 12
    new-instance v0, Lcom/oneplus/api/util/json/JSONValidator;

    invoke-direct {v0, p1}, Lcom/oneplus/api/util/json/JSONValidator;-><init>(Lcom/oneplus/api/util/json/JSONErrorListener;)V

    invoke-direct {p0, v0}, Lcom/oneplus/api/util/json/JSONValidatingReader;-><init>(Lcom/oneplus/api/util/json/JSONValidator;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/api/util/json/JSONValidator;)V
    .locals 0
    .param p1, "validator"    # Lcom/oneplus/api/util/json/JSONValidator;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/oneplus/api/util/json/JSONReader;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/oneplus/api/util/json/JSONValidatingReader;->validator:Lcom/oneplus/api/util/json/JSONValidator;

    .line 9
    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/api/util/json/JSONValidatingReader;->validator:Lcom/oneplus/api/util/json/JSONValidator;

    invoke-virtual {v0, p1}, Lcom/oneplus/api/util/json/JSONValidator;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/api/util/json/JSONValidatingReader;->INVALID:Ljava/lang/Object;

    .line 21
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/api/util/json/JSONReader;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
