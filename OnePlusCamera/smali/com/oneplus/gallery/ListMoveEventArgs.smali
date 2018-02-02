.class public Lcom/oneplus/gallery/ListMoveEventArgs;
.super Lcom/oneplus/gallery/ListChangeEventArgs;
.source "ListMoveEventArgs.java"


# instance fields
.field private volatile m_OldEndIndex:I

.field private volatile m_OldStartIndex:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p3, p4}, Lcom/oneplus/gallery/ListChangeEventArgs;-><init>(II)V

    .line 23
    iput p1, p0, Lcom/oneplus/gallery/ListMoveEventArgs;->m_OldStartIndex:I

    .line 24
    iput p2, p0, Lcom/oneplus/gallery/ListMoveEventArgs;->m_OldEndIndex:I

    .line 25
    return-void
.end method


# virtual methods
.method public final getOldEndIndex()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/oneplus/gallery/ListMoveEventArgs;->m_OldEndIndex:I

    return v0
.end method

.method public final getOldStartIndex()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/oneplus/gallery/ListMoveEventArgs;->m_OldStartIndex:I

    return v0
.end method
