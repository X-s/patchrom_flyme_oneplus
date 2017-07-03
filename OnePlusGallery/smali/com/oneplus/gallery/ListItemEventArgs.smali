.class public Lcom/oneplus/gallery/ListItemEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "ListItemEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/base/EventArgs;"
    }
.end annotation


# instance fields
.field private final m_Index:I

.field private final m_Item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/oneplus/gallery/ListItemEventArgs;, "Lcom/oneplus/gallery/ListItemEventArgs<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 23
    iput p1, p0, Lcom/oneplus/gallery/ListItemEventArgs;->m_Index:I

    .line 24
    iput-object p2, p0, Lcom/oneplus/gallery/ListItemEventArgs;->m_Item:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/oneplus/gallery/ListItemEventArgs;, "Lcom/oneplus/gallery/ListItemEventArgs<TT;>;"
    iget v0, p0, Lcom/oneplus/gallery/ListItemEventArgs;->m_Index:I

    return v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/oneplus/gallery/ListItemEventArgs;, "Lcom/oneplus/gallery/ListItemEventArgs<TT;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/ListItemEventArgs;->m_Item:Ljava/lang/Object;

    return-object v0
.end method
