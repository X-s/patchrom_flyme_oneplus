.class Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;
.super Ljava/lang/Object;
.source "DescendableLinkedList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/DescendableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final iter:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jsoup/helper/DescendableLinkedList;


# direct methods
.method private constructor <init>(Lorg/jsoup/helper/DescendableLinkedList;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 55
    .local p0, "this":Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;, "Lorg/jsoup/helper/DescendableLinkedList<TE;>.DescendingIterator<TE;>;"
    iput-object p1, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->this$0:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1, p2}, Lorg/jsoup/helper/DescendableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->iter:Ljava/util/ListIterator;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/DescendableLinkedList;ILorg/jsoup/helper/DescendableLinkedList$DescendingIterator;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;-><init>(Lorg/jsoup/helper/DescendableLinkedList;I)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;, "Lorg/jsoup/helper/DescendableLinkedList<TE;>.DescendingIterator<TE;>;"
    iget-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;, "Lorg/jsoup/helper/DescendableLinkedList<TE;>.DescendingIterator<TE;>;"
    iget-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;, "Lorg/jsoup/helper/DescendableLinkedList<TE;>.DescendingIterator<TE;>;"
    iget-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$DescendingIterator;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 80
    return-void
.end method
