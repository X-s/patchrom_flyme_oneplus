.class public final Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final containingTypeDefaultInstance:Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field private final descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

.field private final messageDefaultInstance:Lcom/google/protobuf/MessageLite;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)V
    .locals 2
    .param p3, "messageDefaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p4, "descriptor"    # Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    .local p1, "containingTypeDefaultInstance":Lcom/google/protobuf/MessageLite;, "TContainingType;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    if-nez p1, :cond_0

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null containingTypeDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_0
    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_1

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null messageDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_1
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/google/protobuf/MessageLite;

    .line 644
    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    .line 645
    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/MessageLite;

    .line 646
    iput-object p4, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 647
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Lcom/google/protobuf/GeneratedMessageLite$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/MessageLite;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/google/protobuf/MessageLite;
    .param p4, "x3"    # Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    .param p5, "x4"    # Lcom/google/protobuf/GeneratedMessageLite$1;

    .prologue
    .line 624
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/MessageLite;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method


# virtual methods
.method public getContainingTypeDefaultInstance()Lcom/google/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContainingType;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 671
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 663
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TContainingType;TType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    return v0
.end method
