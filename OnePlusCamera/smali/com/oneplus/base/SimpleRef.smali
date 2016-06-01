.class public final Lcom/oneplus/base/SimpleRef;
.super Ljava/lang/Object;
.source "SimpleRef.java"

# interfaces
.implements Lcom/oneplus/base/Ref;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/Ref",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile m_Value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oneplus/base/SimpleRef;->m_Value:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<TT;>;"
    iget-object v0, p0, Lcom/oneplus/base/SimpleRef;->m_Value:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/oneplus/base/SimpleRef;, "Lcom/oneplus/base/SimpleRef<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/oneplus/base/SimpleRef;->m_Value:Ljava/lang/Object;

    .line 43
    return-void
.end method
