.class Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;
.super Ljava/util/AbstractList;
.source "RepeatedFieldBuilder.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RepeatedFieldBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageExternalList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/util/AbstractList",
        "<TMType;>;",
        "Ljava/util/List",
        "<TMType;>;"
    }
.end annotation


# instance fields
.field builder:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<TMType;TBType;TIType;>;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList<TMType;TBType;TIType;>;"
    .local p1, "builder":Lcom/google/protobuf/RepeatedFieldBuilder;, "Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 615
    iput-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;->builder:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 616
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/protobuf/GeneratedMessage;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;->builder:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 605
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList<TMType;TBType;TIType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;->get(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    return-object v0
.end method

.method incrementModCount()V
    .locals 1

    .prologue
    .line 627
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList<TMType;TBType;TIType;>;"
    iget v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;->modCount:I

    .line 628
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 619
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;->builder:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method
