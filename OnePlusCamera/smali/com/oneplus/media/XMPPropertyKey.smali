.class public Lcom/oneplus/media/XMPPropertyKey;
.super Ljava/lang/Object;
.source "XMPPropertyKey.java"


# instance fields
.field private m_Namespace:Ljava/lang/String;

.field private m_PropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oneplus/media/XMPPropertyKey;->m_Namespace:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/oneplus/media/XMPPropertyKey;->m_PropertyName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/media/XMPPropertyKey;->m_PropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/media/XMPPropertyKey;->m_Namespace:Ljava/lang/String;

    return-object v0
.end method
