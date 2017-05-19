.class public Lcom/android/server/wifi/hotspot2/omadm/MOTree;
.super Ljava/lang/Object;
.source "MOTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/omadm/MOTree$1;,
        Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    }
.end annotation


# static fields
.field private static final DDFNameTag:Ljava/lang/String; = "DDFName"

.field public static final MgmtTreeTag:Ljava/lang/String; = "MgmtTree"

.field private static final NodeNameTag:Ljava/lang/String; = "NodeName"

.field private static final NodeTag:Ljava/lang/String; = "Node"

.field private static final PathTag:Ljava/lang/String; = "Path"

.field private static final RTPropTag:Ljava/lang/String; = "RTProperties"

.field private static final TypeTag:Ljava/lang/String; = "Type"

.field private static final ValueTag:Ljava/lang/String; = "Value"


# instance fields
.field private final mDtdRev:Ljava/lang/String;

.field private final mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

.field private final mUrn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .locals 7
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "urn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 31
    .local v1, "children":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v2, 0x0

    .line 33
    .local v2, "dtdRev":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 35
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VerDTD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 42
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_1
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    .line 45
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string v5, "MgmtTree"

    invoke-direct {v4, v6, v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 47
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 48
    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-static {v4, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_0

    .line 50
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    .locals 0
    .param p1, "urn"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .param p3, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 56
    return-void
.end method

.method private static buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V
    .locals 15
    .param p0, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Node"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 90
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Node is a \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' instead of a \'Node\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 92
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v12, 0x3

    invoke-direct {v0, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 93
    .local v0, "checkMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v3, 0x0

    .line 94
    .local v3, "context":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v11, "values":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v4, 0x0

    .line 99
    .local v4, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 100
    .local v1, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 102
    .local v8, "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, "NodeName"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 103
    if-eqz v4, :cond_2

    .line 104
    new-instance v12, Ljava/io/IOException;

    const-string v13, "NodeName not expected"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 105
    :cond_2
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    .end local v4    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v4, v12, v13}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;-><init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MOTree$1;)V

    .restart local v4    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Path"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 108
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 109
    :cond_4
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Path not expected"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 110
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->setPath(Ljava/lang/String;)V
    invoke-static {v4, v12}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->access$100(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Value"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 113
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 114
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Value in constructed node"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 115
    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 116
    :cond_8
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Value not expected"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 117
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->setValue(Ljava/lang/String;)V
    invoke-static {v4, v12}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->access$200(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    .line 118
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 121
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, "RTProperties"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 122
    if-eqz v8, :cond_b

    .line 123
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Duplicate RTProperties"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 124
    :cond_b
    const-string v12, "Type"

    invoke-static {v1, v12}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v10

    .line 125
    .local v10, "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    const-string v12, "DDFName"

    invoke-static {v10, v12}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v5

    .line 126
    .local v5, "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v3

    .line 127
    if-nez v3, :cond_1

    .line 128
    new-instance v12, Ljava/io/IOException;

    const-string v13, "No text in DDFName"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 130
    .end local v5    # "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v10    # "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Node"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 131
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    .line 132
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Scalar node "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " has Node child"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 133
    :cond_d
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 138
    .end local v1    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v8    # "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_e
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 139
    if-nez v4, :cond_f

    .line 140
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Missing name"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 142
    :cond_f
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v3, v13, v14}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v9

    .line 145
    .local v9, "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 146
    .restart local v1    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-static {v9, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_1

    .line 149
    .end local v1    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v9    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_11

    .line 150
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Got both sub nodes and value(s)"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 152
    :cond_11
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    .line 153
    .local v7, "nodeData":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v3, v13, v14}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto :goto_2

    .line 157
    .end local v7    # "nodeData":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    :cond_12
    return-void
.end method

.method private static getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No node for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 163
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to have exactly one child"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 165
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to have child \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' instead of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_2
    return-object v0
.end method

.method public static unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v2, 0x1

    .line 201
    .local v2, "strip":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v3, "tree":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 204
    .local v0, "octet":I
    if-gez v0, :cond_1

    .line 205
    const/4 v6, 0x0

    .line 222
    :goto_1
    return-object v6

    .line 206
    :cond_1
    const/16 v6, 0x20

    if-le v0, v6, :cond_2

    .line 207
    int-to-char v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    :cond_2
    if-nez v2, :cond_0

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tree"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 214
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not a tree: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 217
    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "version":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->readURN(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "urn":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v1

    .line 222
    .local v1, "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    invoke-direct {v6, v4, v5, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    goto :goto_1
.end method


# virtual methods
.method public getDtdRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    return-object v0
.end method

.method public getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    return-object v0
.end method

.method public marshal(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 193
    const-string v0, "tree "

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 195
    const-string v0, "(%s)\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->marshal(Ljava/io/OutputStream;I)V

    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MO Tree v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", urn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
