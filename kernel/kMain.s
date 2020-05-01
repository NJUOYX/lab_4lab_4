
kMain.o:     file format elf32-i386


Disassembly of section .text:

00100000 <inLong>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	83 ec 14             	sub    $0x14,%esp
  100006:	e8 3a 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10000b:	05 f5 6f 00 00       	add    $0x6ff5,%eax
  100010:	8b 45 08             	mov    0x8(%ebp),%eax
  100013:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  100017:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10001a:	89 c2                	mov    %eax,%edx
  10001c:	ed                   	in     (%dx),%eax
  10001d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100020:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100023:	c9                   	leave  
  100024:	c3                   	ret    

00100025 <outLong>:
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	83 ec 04             	sub    $0x4,%esp
  10002b:	e8 15 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100030:	05 d0 6f 00 00       	add    $0x6fd0,%eax
  100035:	8b 45 08             	mov    0x8(%ebp),%eax
  100038:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10003c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10003f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100042:	ef                   	out    %eax,(%dx)
  100043:	90                   	nop
  100044:	c9                   	leave  
  100045:	c3                   	ret    

00100046 <inByte>:
  100046:	55                   	push   %ebp
  100047:	89 e5                	mov    %esp,%ebp
  100049:	83 ec 14             	sub    $0x14,%esp
  10004c:	e8 f4 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100051:	05 af 6f 00 00       	add    $0x6faf,%eax
  100056:	8b 45 08             	mov    0x8(%ebp),%eax
  100059:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  10005d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100060:	89 c2                	mov    %eax,%edx
  100062:	ec                   	in     (%dx),%al
  100063:	88 45 ff             	mov    %al,-0x1(%ebp)
  100066:	8a 45 ff             	mov    -0x1(%ebp),%al
  100069:	c9                   	leave  
  10006a:	c3                   	ret    

0010006b <outByte>:
  10006b:	55                   	push   %ebp
  10006c:	89 e5                	mov    %esp,%ebp
  10006e:	83 ec 08             	sub    $0x8,%esp
  100071:	e8 cf 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100076:	05 8a 6f 00 00       	add    $0x6f8a,%eax
  10007b:	8b 45 08             	mov    0x8(%ebp),%eax
  10007e:	8b 55 0c             	mov    0xc(%ebp),%edx
  100081:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100085:	88 d0                	mov    %dl,%al
  100087:	88 45 f8             	mov    %al,-0x8(%ebp)
  10008a:	8a 45 f8             	mov    -0x8(%ebp),%al
  10008d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100090:	ee                   	out    %al,(%dx)
  100091:	90                   	nop
  100092:	c9                   	leave  
  100093:	c3                   	ret    

00100094 <waitDisk>:
  100094:	55                   	push   %ebp
  100095:	89 e5                	mov    %esp,%ebp
  100097:	e8 a9 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10009c:	05 64 6f 00 00       	add    $0x6f64,%eax
  1000a1:	90                   	nop
  1000a2:	68 f7 01 00 00       	push   $0x1f7
  1000a7:	e8 9a ff ff ff       	call   100046 <inByte>
  1000ac:	83 c4 04             	add    $0x4,%esp
  1000af:	0f b6 c0             	movzbl %al,%eax
  1000b2:	25 c0 00 00 00       	and    $0xc0,%eax
  1000b7:	83 f8 40             	cmp    $0x40,%eax
  1000ba:	75 e6                	jne    1000a2 <waitDisk+0xe>
  1000bc:	90                   	nop
  1000bd:	c9                   	leave  
  1000be:	c3                   	ret    

001000bf <readSect>:
  1000bf:	55                   	push   %ebp
  1000c0:	89 e5                	mov    %esp,%ebp
  1000c2:	53                   	push   %ebx
  1000c3:	83 ec 10             	sub    $0x10,%esp
  1000c6:	e8 7a 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  1000cb:	05 35 6f 00 00       	add    $0x6f35,%eax
  1000d0:	e8 bf ff ff ff       	call   100094 <waitDisk>
  1000d5:	6a 01                	push   $0x1
  1000d7:	68 f2 01 00 00       	push   $0x1f2
  1000dc:	e8 8a ff ff ff       	call   10006b <outByte>
  1000e1:	83 c4 08             	add    $0x8,%esp
  1000e4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000e7:	0f be c0             	movsbl %al,%eax
  1000ea:	50                   	push   %eax
  1000eb:	68 f3 01 00 00       	push   $0x1f3
  1000f0:	e8 76 ff ff ff       	call   10006b <outByte>
  1000f5:	83 c4 08             	add    $0x8,%esp
  1000f8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000fb:	c1 f8 08             	sar    $0x8,%eax
  1000fe:	0f be c0             	movsbl %al,%eax
  100101:	50                   	push   %eax
  100102:	68 f4 01 00 00       	push   $0x1f4
  100107:	e8 5f ff ff ff       	call   10006b <outByte>
  10010c:	83 c4 08             	add    $0x8,%esp
  10010f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100112:	c1 f8 10             	sar    $0x10,%eax
  100115:	0f be c0             	movsbl %al,%eax
  100118:	50                   	push   %eax
  100119:	68 f5 01 00 00       	push   $0x1f5
  10011e:	e8 48 ff ff ff       	call   10006b <outByte>
  100123:	83 c4 08             	add    $0x8,%esp
  100126:	8b 45 0c             	mov    0xc(%ebp),%eax
  100129:	c1 f8 18             	sar    $0x18,%eax
  10012c:	83 c8 e0             	or     $0xffffffe0,%eax
  10012f:	0f be c0             	movsbl %al,%eax
  100132:	50                   	push   %eax
  100133:	68 f6 01 00 00       	push   $0x1f6
  100138:	e8 2e ff ff ff       	call   10006b <outByte>
  10013d:	83 c4 08             	add    $0x8,%esp
  100140:	6a 20                	push   $0x20
  100142:	68 f7 01 00 00       	push   $0x1f7
  100147:	e8 1f ff ff ff       	call   10006b <outByte>
  10014c:	83 c4 08             	add    $0x8,%esp
  10014f:	e8 40 ff ff ff       	call   100094 <waitDisk>
  100154:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10015b:	eb 22                	jmp    10017f <readSect+0xc0>
  10015d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100160:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100167:	8b 45 08             	mov    0x8(%ebp),%eax
  10016a:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
  10016d:	68 f0 01 00 00       	push   $0x1f0
  100172:	e8 89 fe ff ff       	call   100000 <inLong>
  100177:	83 c4 04             	add    $0x4,%esp
  10017a:	89 03                	mov    %eax,(%ebx)
  10017c:	ff 45 f8             	incl   -0x8(%ebp)
  10017f:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
  100183:	7e d8                	jle    10015d <readSect+0x9e>
  100185:	90                   	nop
  100186:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100189:	c9                   	leave  
  10018a:	c3                   	ret    

0010018b <writeSect>:
  10018b:	55                   	push   %ebp
  10018c:	89 e5                	mov    %esp,%ebp
  10018e:	83 ec 10             	sub    $0x10,%esp
  100191:	e8 af 02 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100196:	05 6a 6e 00 00       	add    $0x6e6a,%eax
  10019b:	e8 f4 fe ff ff       	call   100094 <waitDisk>
  1001a0:	6a 01                	push   $0x1
  1001a2:	68 f2 01 00 00       	push   $0x1f2
  1001a7:	e8 bf fe ff ff       	call   10006b <outByte>
  1001ac:	83 c4 08             	add    $0x8,%esp
  1001af:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001b2:	0f be c0             	movsbl %al,%eax
  1001b5:	50                   	push   %eax
  1001b6:	68 f3 01 00 00       	push   $0x1f3
  1001bb:	e8 ab fe ff ff       	call   10006b <outByte>
  1001c0:	83 c4 08             	add    $0x8,%esp
  1001c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001c6:	c1 f8 08             	sar    $0x8,%eax
  1001c9:	0f be c0             	movsbl %al,%eax
  1001cc:	50                   	push   %eax
  1001cd:	68 f4 01 00 00       	push   $0x1f4
  1001d2:	e8 94 fe ff ff       	call   10006b <outByte>
  1001d7:	83 c4 08             	add    $0x8,%esp
  1001da:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001dd:	c1 f8 10             	sar    $0x10,%eax
  1001e0:	0f be c0             	movsbl %al,%eax
  1001e3:	50                   	push   %eax
  1001e4:	68 f5 01 00 00       	push   $0x1f5
  1001e9:	e8 7d fe ff ff       	call   10006b <outByte>
  1001ee:	83 c4 08             	add    $0x8,%esp
  1001f1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001f4:	c1 f8 18             	sar    $0x18,%eax
  1001f7:	83 c8 e0             	or     $0xffffffe0,%eax
  1001fa:	0f be c0             	movsbl %al,%eax
  1001fd:	50                   	push   %eax
  1001fe:	68 f6 01 00 00       	push   $0x1f6
  100203:	e8 63 fe ff ff       	call   10006b <outByte>
  100208:	83 c4 08             	add    $0x8,%esp
  10020b:	6a 30                	push   $0x30
  10020d:	68 f7 01 00 00       	push   $0x1f7
  100212:	e8 54 fe ff ff       	call   10006b <outByte>
  100217:	83 c4 08             	add    $0x8,%esp
  10021a:	e8 75 fe ff ff       	call   100094 <waitDisk>
  10021f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100226:	eb 22                	jmp    10024a <writeSect+0xbf>
  100228:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10022b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100232:	8b 45 08             	mov    0x8(%ebp),%eax
  100235:	01 d0                	add    %edx,%eax
  100237:	8b 00                	mov    (%eax),%eax
  100239:	50                   	push   %eax
  10023a:	68 f0 01 00 00       	push   $0x1f0
  10023f:	e8 e1 fd ff ff       	call   100025 <outLong>
  100244:	83 c4 08             	add    $0x8,%esp
  100247:	ff 45 fc             	incl   -0x4(%ebp)
  10024a:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%ebp)
  10024e:	7e d8                	jle    100228 <writeSect+0x9d>
  100250:	90                   	nop
  100251:	c9                   	leave  
  100252:	c3                   	ret    

00100253 <diskRead>:
  100253:	55                   	push   %ebp
  100254:	89 e5                	mov    %esp,%ebp
  100256:	81 ec 10 02 00 00    	sub    $0x210,%esp
  10025c:	e8 e4 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100261:	05 9f 6d 00 00       	add    $0x6d9f,%eax
  100266:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10026d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100274:	8b 45 14             	mov    0x14(%ebp),%eax
  100277:	85 c0                	test   %eax,%eax
  100279:	79 05                	jns    100280 <diskRead+0x2d>
  10027b:	05 ff 01 00 00       	add    $0x1ff,%eax
  100280:	c1 f8 09             	sar    $0x9,%eax
  100283:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100286:	8b 45 14             	mov    0x14(%ebp),%eax
  100289:	25 ff 01 00 80       	and    $0x800001ff,%eax
  10028e:	85 c0                	test   %eax,%eax
  100290:	79 07                	jns    100299 <diskRead+0x46>
  100292:	48                   	dec    %eax
  100293:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100298:	40                   	inc    %eax
  100299:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10029c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10029f:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1002a5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1002a8:	01 d0                	add    %edx,%eax
  1002aa:	50                   	push   %eax
  1002ab:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1002b1:	50                   	push   %eax
  1002b2:	e8 08 fe ff ff       	call   1000bf <readSect>
  1002b7:	83 c4 08             	add    $0x8,%esp
  1002ba:	ff 45 f8             	incl   -0x8(%ebp)
  1002bd:	eb 5e                	jmp    10031d <diskRead+0xca>
  1002bf:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002c2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002c5:	01 d0                	add    %edx,%eax
  1002c7:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1002cc:	85 c0                	test   %eax,%eax
  1002ce:	79 07                	jns    1002d7 <diskRead+0x84>
  1002d0:	48                   	dec    %eax
  1002d1:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1002d6:	40                   	inc    %eax
  1002d7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1002da:	8b 55 08             	mov    0x8(%ebp),%edx
  1002dd:	01 ca                	add    %ecx,%edx
  1002df:	8a 84 05 f0 fd ff ff 	mov    -0x210(%ebp,%eax,1),%al
  1002e6:	88 02                	mov    %al,(%edx)
  1002e8:	ff 45 fc             	incl   -0x4(%ebp)
  1002eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002f1:	01 d0                	add    %edx,%eax
  1002f3:	25 ff 01 00 00       	and    $0x1ff,%eax
  1002f8:	85 c0                	test   %eax,%eax
  1002fa:	75 21                	jne    10031d <diskRead+0xca>
  1002fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002ff:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  100305:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100308:	01 d0                	add    %edx,%eax
  10030a:	50                   	push   %eax
  10030b:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100311:	50                   	push   %eax
  100312:	e8 a8 fd ff ff       	call   1000bf <readSect>
  100317:	83 c4 08             	add    $0x8,%esp
  10031a:	ff 45 f8             	incl   -0x8(%ebp)
  10031d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100320:	0f af 45 10          	imul   0x10(%ebp),%eax
  100324:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  100327:	7c 96                	jl     1002bf <diskRead+0x6c>
  100329:	90                   	nop
  10032a:	c9                   	leave  
  10032b:	c3                   	ret    

0010032c <diskWrite>:
  10032c:	55                   	push   %ebp
  10032d:	89 e5                	mov    %esp,%ebp
  10032f:	81 ec 10 02 00 00    	sub    $0x210,%esp
  100335:	e8 0b 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10033a:	05 c6 6c 00 00       	add    $0x6cc6,%eax
  10033f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100346:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10034d:	8b 45 14             	mov    0x14(%ebp),%eax
  100350:	85 c0                	test   %eax,%eax
  100352:	79 05                	jns    100359 <diskWrite+0x2d>
  100354:	05 ff 01 00 00       	add    $0x1ff,%eax
  100359:	c1 f8 09             	sar    $0x9,%eax
  10035c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10035f:	8b 45 14             	mov    0x14(%ebp),%eax
  100362:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100367:	85 c0                	test   %eax,%eax
  100369:	79 07                	jns    100372 <diskWrite+0x46>
  10036b:	48                   	dec    %eax
  10036c:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100371:	40                   	inc    %eax
  100372:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100375:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100378:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10037e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100381:	01 d0                	add    %edx,%eax
  100383:	50                   	push   %eax
  100384:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10038a:	50                   	push   %eax
  10038b:	e8 2f fd ff ff       	call   1000bf <readSect>
  100390:	83 c4 08             	add    $0x8,%esp
  100393:	eb 7f                	jmp    100414 <diskWrite+0xe8>
  100395:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100398:	8b 45 08             	mov    0x8(%ebp),%eax
  10039b:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  10039e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003a4:	01 d0                	add    %edx,%eax
  1003a6:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1003ab:	85 c0                	test   %eax,%eax
  1003ad:	79 07                	jns    1003b6 <diskWrite+0x8a>
  1003af:	48                   	dec    %eax
  1003b0:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1003b5:	40                   	inc    %eax
  1003b6:	89 c2                	mov    %eax,%edx
  1003b8:	8a 01                	mov    (%ecx),%al
  1003ba:	88 84 15 f0 fd ff ff 	mov    %al,-0x210(%ebp,%edx,1)
  1003c1:	ff 45 fc             	incl   -0x4(%ebp)
  1003c4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003c7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003ca:	01 d0                	add    %edx,%eax
  1003cc:	25 ff 01 00 00       	and    $0x1ff,%eax
  1003d1:	85 c0                	test   %eax,%eax
  1003d3:	75 3f                	jne    100414 <diskWrite+0xe8>
  1003d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003d8:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003de:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1003e1:	01 d0                	add    %edx,%eax
  1003e3:	50                   	push   %eax
  1003e4:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1003ea:	50                   	push   %eax
  1003eb:	e8 9b fd ff ff       	call   10018b <writeSect>
  1003f0:	83 c4 08             	add    $0x8,%esp
  1003f3:	ff 45 f8             	incl   -0x8(%ebp)
  1003f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003f9:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003ff:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100402:	01 d0                	add    %edx,%eax
  100404:	50                   	push   %eax
  100405:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10040b:	50                   	push   %eax
  10040c:	e8 ae fc ff ff       	call   1000bf <readSect>
  100411:	83 c4 08             	add    $0x8,%esp
  100414:	8b 45 0c             	mov    0xc(%ebp),%eax
  100417:	0f af 45 10          	imul   0x10(%ebp),%eax
  10041b:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10041e:	0f 8c 71 ff ff ff    	jl     100395 <diskWrite+0x69>
  100424:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100427:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10042d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100430:	01 d0                	add    %edx,%eax
  100432:	50                   	push   %eax
  100433:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100439:	50                   	push   %eax
  10043a:	e8 4c fd ff ff       	call   10018b <writeSect>
  10043f:	83 c4 08             	add    $0x8,%esp
  100442:	90                   	nop
  100443:	c9                   	leave  
  100444:	c3                   	ret    

00100445 <__x86.get_pc_thunk.ax>:
  100445:	8b 04 24             	mov    (%esp),%eax
  100448:	c3                   	ret    

00100449 <readSuperBlock>:
  100449:	55                   	push   %ebp
  10044a:	89 e5                	mov    %esp,%ebp
  10044c:	53                   	push   %ebx
  10044d:	83 ec 04             	sub    $0x4,%esp
  100450:	e8 f0 ff ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100455:	05 ab 6b 00 00       	add    $0x6bab,%eax
  10045a:	6a 00                	push   $0x0
  10045c:	6a 01                	push   $0x1
  10045e:	68 00 04 00 00       	push   $0x400
  100463:	ff 75 08             	pushl  0x8(%ebp)
  100466:	89 c3                	mov    %eax,%ebx
  100468:	e8 e6 fd ff ff       	call   100253 <diskRead>
  10046d:	83 c4 10             	add    $0x10,%esp
  100470:	b8 00 00 00 00       	mov    $0x0,%eax
  100475:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100478:	c9                   	leave  
  100479:	c3                   	ret    

0010047a <readBlock>:
  10047a:	55                   	push   %ebp
  10047b:	89 e5                	mov    %esp,%ebp
  10047d:	56                   	push   %esi
  10047e:	53                   	push   %ebx
  10047f:	83 ec 20             	sub    $0x20,%esp
  100482:	e8 ae 03 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100487:	81 c3 79 6b 00 00    	add    $0x6b79,%ebx
  10048d:	89 e0                	mov    %esp,%eax
  10048f:	89 c6                	mov    %eax,%esi
  100491:	8b 45 08             	mov    0x8(%ebp),%eax
  100494:	8b 40 14             	mov    0x14(%eax),%eax
  100497:	85 c0                	test   %eax,%eax
  100499:	79 03                	jns    10049e <readBlock+0x24>
  10049b:	83 c0 03             	add    $0x3,%eax
  10049e:	c1 f8 02             	sar    $0x2,%eax
  1004a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004a4:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
  1004ab:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1004ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b1:	01 d0                	add    %edx,%eax
  1004b3:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1004b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b9:	8d 50 ff             	lea    -0x1(%eax),%edx
  1004bc:	89 55 e8             	mov    %edx,-0x18(%ebp)
  1004bf:	c1 e0 02             	shl    $0x2,%eax
  1004c2:	8d 50 03             	lea    0x3(%eax),%edx
  1004c5:	b8 10 00 00 00       	mov    $0x10,%eax
  1004ca:	48                   	dec    %eax
  1004cb:	01 d0                	add    %edx,%eax
  1004cd:	b9 10 00 00 00       	mov    $0x10,%ecx
  1004d2:	ba 00 00 00 00       	mov    $0x0,%edx
  1004d7:	f7 f1                	div    %ecx
  1004d9:	6b c0 10             	imul   $0x10,%eax,%eax
  1004dc:	29 c4                	sub    %eax,%esp
  1004de:	89 e0                	mov    %esp,%eax
  1004e0:	83 c0 03             	add    $0x3,%eax
  1004e3:	c1 e8 02             	shr    $0x2,%eax
  1004e6:	c1 e0 02             	shl    $0x2,%eax
  1004e9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1004ec:	8b 45 10             	mov    0x10(%ebp),%eax
  1004ef:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1004f2:	7d 2b                	jge    10051f <readBlock+0xa5>
  1004f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004f7:	8b 55 10             	mov    0x10(%ebp),%edx
  1004fa:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
  1004fe:	c1 e0 09             	shl    $0x9,%eax
  100501:	89 c2                	mov    %eax,%edx
  100503:	8b 45 08             	mov    0x8(%ebp),%eax
  100506:	8b 40 14             	mov    0x14(%eax),%eax
  100509:	52                   	push   %edx
  10050a:	50                   	push   %eax
  10050b:	6a 01                	push   $0x1
  10050d:	ff 75 14             	pushl  0x14(%ebp)
  100510:	e8 3e fd ff ff       	call   100253 <diskRead>
  100515:	83 c4 10             	add    $0x10,%esp
  100518:	b8 00 00 00 00       	mov    $0x0,%eax
  10051d:	eb 5d                	jmp    10057c <readBlock+0x102>
  10051f:	8b 45 10             	mov    0x10(%ebp),%eax
  100522:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  100525:	7d 50                	jge    100577 <readBlock+0xfd>
  100527:	8b 45 0c             	mov    0xc(%ebp),%eax
  10052a:	8b 40 44             	mov    0x44(%eax),%eax
  10052d:	c1 e0 09             	shl    $0x9,%eax
  100530:	89 c1                	mov    %eax,%ecx
  100532:	8b 45 08             	mov    0x8(%ebp),%eax
  100535:	8b 50 14             	mov    0x14(%eax),%edx
  100538:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10053b:	51                   	push   %ecx
  10053c:	52                   	push   %edx
  10053d:	6a 01                	push   $0x1
  10053f:	50                   	push   %eax
  100540:	e8 0e fd ff ff       	call   100253 <diskRead>
  100545:	83 c4 10             	add    $0x10,%esp
  100548:	8b 45 10             	mov    0x10(%ebp),%eax
  10054b:	2b 45 f0             	sub    -0x10(%ebp),%eax
  10054e:	89 c2                	mov    %eax,%edx
  100550:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100553:	8b 04 90             	mov    (%eax,%edx,4),%eax
  100556:	c1 e0 09             	shl    $0x9,%eax
  100559:	89 c2                	mov    %eax,%edx
  10055b:	8b 45 08             	mov    0x8(%ebp),%eax
  10055e:	8b 40 14             	mov    0x14(%eax),%eax
  100561:	52                   	push   %edx
  100562:	50                   	push   %eax
  100563:	6a 01                	push   $0x1
  100565:	ff 75 14             	pushl  0x14(%ebp)
  100568:	e8 e6 fc ff ff       	call   100253 <diskRead>
  10056d:	83 c4 10             	add    $0x10,%esp
  100570:	b8 00 00 00 00       	mov    $0x0,%eax
  100575:	eb 05                	jmp    10057c <readBlock+0x102>
  100577:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10057c:	89 f4                	mov    %esi,%esp
  10057e:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100581:	5b                   	pop    %ebx
  100582:	5e                   	pop    %esi
  100583:	5d                   	pop    %ebp
  100584:	c3                   	ret    

00100585 <readInode>:
  100585:	55                   	push   %ebp
  100586:	89 e5                	mov    %esp,%ebp
  100588:	57                   	push   %edi
  100589:	56                   	push   %esi
  10058a:	53                   	push   %ebx
  10058b:	83 ec 3c             	sub    $0x3c,%esp
  10058e:	e8 a2 02 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100593:	81 c3 6d 6a 00 00    	add    $0x6a6d,%ebx
  100599:	89 e0                	mov    %esp,%eax
  10059b:	89 c6                	mov    %eax,%esi
  10059d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1005a4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1005ab:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  1005b2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1005b9:	8b 45 10             	mov    0x10(%ebp),%eax
  1005bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1005c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1005c5:	8b 40 14             	mov    0x14(%eax),%eax
  1005c8:	8d 50 ff             	lea    -0x1(%eax),%edx
  1005cb:	89 55 d0             	mov    %edx,-0x30(%ebp)
  1005ce:	89 c2                	mov    %eax,%edx
  1005d0:	b8 10 00 00 00       	mov    $0x10,%eax
  1005d5:	48                   	dec    %eax
  1005d6:	01 d0                	add    %edx,%eax
  1005d8:	bf 10 00 00 00       	mov    $0x10,%edi
  1005dd:	ba 00 00 00 00       	mov    $0x0,%edx
  1005e2:	f7 f7                	div    %edi
  1005e4:	6b c0 10             	imul   $0x10,%eax,%eax
  1005e7:	29 c4                	sub    %eax,%esp
  1005e9:	89 e0                	mov    %esp,%eax
  1005eb:	83 c0 00             	add    $0x0,%eax
  1005ee:	89 45 cc             	mov    %eax,-0x34(%ebp)
  1005f1:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
  1005f8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1005ff:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
  100606:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
  10060d:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  100611:	74 0e                	je     100621 <readInode+0x9c>
  100613:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100616:	8b 45 14             	mov    0x14(%ebp),%eax
  100619:	01 d0                	add    %edx,%eax
  10061b:	8a 00                	mov    (%eax),%al
  10061d:	84 c0                	test   %al,%al
  10061f:	75 0a                	jne    10062b <readInode+0xa6>
  100621:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100626:	e9 00 02 00 00       	jmp    10082b <readInode+0x2a6>
  10062b:	83 ec 04             	sub    $0x4,%esp
  10062e:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100631:	50                   	push   %eax
  100632:	6a 2f                	push   $0x2f
  100634:	ff 75 14             	pushl  0x14(%ebp)
  100637:	e8 e6 3b 00 00       	call   104222 <stringChr>
  10063c:	83 c4 10             	add    $0x10,%esp
  10063f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  100642:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100646:	74 07                	je     10064f <readInode+0xca>
  100648:	8b 45 c0             	mov    -0x40(%ebp),%eax
  10064b:	85 c0                	test   %eax,%eax
  10064d:	74 0a                	je     100659 <readInode+0xd4>
  10064f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100654:	e9 d2 01 00 00       	jmp    10082b <readInode+0x2a6>
  100659:	ff 45 e4             	incl   -0x1c(%ebp)
  10065c:	8b 45 08             	mov    0x8(%ebp),%eax
  10065f:	8b 40 20             	mov    0x20(%eax),%eax
  100662:	c1 e0 09             	shl    $0x9,%eax
  100665:	89 c2                	mov    %eax,%edx
  100667:	8b 45 10             	mov    0x10(%ebp),%eax
  10066a:	89 10                	mov    %edx,(%eax)
  10066c:	8b 45 10             	mov    0x10(%ebp),%eax
  10066f:	8b 00                	mov    (%eax),%eax
  100671:	50                   	push   %eax
  100672:	6a 01                	push   $0x1
  100674:	68 80 00 00 00       	push   $0x80
  100679:	ff 75 0c             	pushl  0xc(%ebp)
  10067c:	e8 d2 fb ff ff       	call   100253 <diskRead>
  100681:	83 c4 10             	add    $0x10,%esp
  100684:	e9 8b 01 00 00       	jmp    100814 <readInode+0x28f>
  100689:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10068c:	8b 45 14             	mov    0x14(%ebp),%eax
  10068f:	01 c2                	add    %eax,%edx
  100691:	83 ec 04             	sub    $0x4,%esp
  100694:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100697:	50                   	push   %eax
  100698:	6a 2f                	push   $0x2f
  10069a:	52                   	push   %edx
  10069b:	e8 82 3b 00 00       	call   104222 <stringChr>
  1006a0:	83 c4 10             	add    $0x10,%esp
  1006a3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1006a6:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1006aa:	75 11                	jne    1006bd <readInode+0x138>
  1006ac:	8b 45 c0             	mov    -0x40(%ebp),%eax
  1006af:	85 c0                	test   %eax,%eax
  1006b1:	75 0a                	jne    1006bd <readInode+0x138>
  1006b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006b8:	e9 6e 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006bd:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  1006c1:	75 09                	jne    1006cc <readInode+0x147>
  1006c3:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
  1006ca:	eb 15                	jmp    1006e1 <readInode+0x15c>
  1006cc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006cf:	8b 00                	mov    (%eax),%eax
  1006d1:	66 83 f8 01          	cmp    $0x1,%ax
  1006d5:	75 0a                	jne    1006e1 <readInode+0x15c>
  1006d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006dc:	e9 4a 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006e1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006e4:	8b 40 04             	mov    0x4(%eax),%eax
  1006e7:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  1006ea:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1006f1:	e9 ea 00 00 00       	jmp    1007e0 <readInode+0x25b>
  1006f6:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1006f9:	50                   	push   %eax
  1006fa:	ff 75 d8             	pushl  -0x28(%ebp)
  1006fd:	ff 75 0c             	pushl  0xc(%ebp)
  100700:	ff 75 08             	pushl  0x8(%ebp)
  100703:	e8 72 fd ff ff       	call   10047a <readBlock>
  100708:	83 c4 10             	add    $0x10,%esp
  10070b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  10070e:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100712:	75 0a                	jne    10071e <readInode+0x199>
  100714:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100719:	e9 0d 01 00 00       	jmp    10082b <readInode+0x2a6>
  10071e:	8b 45 cc             	mov    -0x34(%ebp),%eax
  100721:	89 45 c8             	mov    %eax,-0x38(%ebp)
  100724:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10072b:	e9 85 00 00 00       	jmp    1007b5 <readInode+0x230>
  100730:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100733:	c1 e0 07             	shl    $0x7,%eax
  100736:	89 c2                	mov    %eax,%edx
  100738:	8b 45 c8             	mov    -0x38(%ebp),%eax
  10073b:	01 d0                	add    %edx,%eax
  10073d:	8b 00                	mov    (%eax),%eax
  10073f:	85 c0                	test   %eax,%eax
  100741:	74 6e                	je     1007b1 <readInode+0x22c>
  100743:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100746:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  100749:	8b 55 14             	mov    0x14(%ebp),%edx
  10074c:	01 d1                	add    %edx,%ecx
  10074e:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100751:	89 d7                	mov    %edx,%edi
  100753:	c1 e7 07             	shl    $0x7,%edi
  100756:	8b 55 c8             	mov    -0x38(%ebp),%edx
  100759:	01 fa                	add    %edi,%edx
  10075b:	83 c2 04             	add    $0x4,%edx
  10075e:	83 ec 04             	sub    $0x4,%esp
  100761:	50                   	push   %eax
  100762:	51                   	push   %ecx
  100763:	52                   	push   %edx
  100764:	e8 e0 3b 00 00       	call   104349 <stringCmp>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	85 c0                	test   %eax,%eax
  10076e:	75 42                	jne    1007b2 <readInode+0x22d>
  100770:	8b 45 08             	mov    0x8(%ebp),%eax
  100773:	8b 40 20             	mov    0x20(%eax),%eax
  100776:	c1 e0 09             	shl    $0x9,%eax
  100779:	89 c2                	mov    %eax,%edx
  10077b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10077e:	c1 e0 07             	shl    $0x7,%eax
  100781:	89 c1                	mov    %eax,%ecx
  100783:	8b 45 c8             	mov    -0x38(%ebp),%eax
  100786:	01 c8                	add    %ecx,%eax
  100788:	8b 00                	mov    (%eax),%eax
  10078a:	48                   	dec    %eax
  10078b:	c1 e0 07             	shl    $0x7,%eax
  10078e:	01 d0                	add    %edx,%eax
  100790:	89 c2                	mov    %eax,%edx
  100792:	8b 45 10             	mov    0x10(%ebp),%eax
  100795:	89 10                	mov    %edx,(%eax)
  100797:	8b 45 10             	mov    0x10(%ebp),%eax
  10079a:	8b 00                	mov    (%eax),%eax
  10079c:	50                   	push   %eax
  10079d:	6a 01                	push   $0x1
  10079f:	68 80 00 00 00       	push   $0x80
  1007a4:	ff 75 0c             	pushl  0xc(%ebp)
  1007a7:	e8 a7 fa ff ff       	call   100253 <diskRead>
  1007ac:	83 c4 10             	add    $0x10,%esp
  1007af:	eb 1a                	jmp    1007cb <readInode+0x246>
  1007b1:	90                   	nop
  1007b2:	ff 45 dc             	incl   -0x24(%ebp)
  1007b5:	8b 45 08             	mov    0x8(%ebp),%eax
  1007b8:	8b 40 14             	mov    0x14(%eax),%eax
  1007bb:	c1 e8 07             	shr    $0x7,%eax
  1007be:	89 c2                	mov    %eax,%edx
  1007c0:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007c3:	39 c2                	cmp    %eax,%edx
  1007c5:	0f 87 65 ff ff ff    	ja     100730 <readInode+0x1ab>
  1007cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1007ce:	8b 40 14             	mov    0x14(%eax),%eax
  1007d1:	c1 e8 07             	shr    $0x7,%eax
  1007d4:	89 c2                	mov    %eax,%edx
  1007d6:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007d9:	39 c2                	cmp    %eax,%edx
  1007db:	77 11                	ja     1007ee <readInode+0x269>
  1007dd:	ff 45 d8             	incl   -0x28(%ebp)
  1007e0:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007e3:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007e6:	0f 8c 0a ff ff ff    	jl     1006f6 <readInode+0x171>
  1007ec:	eb 01                	jmp    1007ef <readInode+0x26a>
  1007ee:	90                   	nop
  1007ef:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007f2:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007f5:	7d 16                	jge    10080d <readInode+0x288>
  1007f7:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  1007fb:	75 09                	jne    100806 <readInode+0x281>
  1007fd:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100800:	40                   	inc    %eax
  100801:	01 45 e4             	add    %eax,-0x1c(%ebp)
  100804:	eb 0e                	jmp    100814 <readInode+0x28f>
  100806:	b8 00 00 00 00       	mov    $0x0,%eax
  10080b:	eb 1e                	jmp    10082b <readInode+0x2a6>
  10080d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100812:	eb 17                	jmp    10082b <readInode+0x2a6>
  100814:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100817:	8b 45 14             	mov    0x14(%ebp),%eax
  10081a:	01 d0                	add    %edx,%eax
  10081c:	8a 00                	mov    (%eax),%al
  10081e:	84 c0                	test   %al,%al
  100820:	0f 85 63 fe ff ff    	jne    100689 <readInode+0x104>
  100826:	b8 00 00 00 00       	mov    $0x0,%eax
  10082b:	89 f4                	mov    %esi,%esp
  10082d:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100830:	5b                   	pop    %ebx
  100831:	5e                   	pop    %esi
  100832:	5f                   	pop    %edi
  100833:	5d                   	pop    %ebp
  100834:	c3                   	ret    

00100835 <__x86.get_pc_thunk.bx>:
  100835:	8b 1c 24             	mov    (%esp),%ebx
  100838:	c3                   	ret    

00100839 <outByte>:
  100839:	55                   	push   %ebp
  10083a:	89 e5                	mov    %esp,%ebp
  10083c:	83 ec 08             	sub    $0x8,%esp
  10083f:	e8 01 fc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100844:	05 bc 67 00 00       	add    $0x67bc,%eax
  100849:	8b 45 08             	mov    0x8(%ebp),%eax
  10084c:	8b 55 0c             	mov    0xc(%ebp),%edx
  10084f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100853:	88 d0                	mov    %dl,%al
  100855:	88 45 f8             	mov    %al,-0x8(%ebp)
  100858:	8a 45 f8             	mov    -0x8(%ebp),%al
  10085b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10085e:	ee                   	out    %al,(%dx)
  10085f:	90                   	nop
  100860:	c9                   	leave  
  100861:	c3                   	ret    

00100862 <initIntr>:
  100862:	55                   	push   %ebp
  100863:	89 e5                	mov    %esp,%ebp
  100865:	e8 db fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10086a:	05 96 67 00 00       	add    $0x6796,%eax
  10086f:	6a 11                	push   $0x11
  100871:	6a 20                	push   $0x20
  100873:	e8 c1 ff ff ff       	call   100839 <outByte>
  100878:	83 c4 08             	add    $0x8,%esp
  10087b:	6a 11                	push   $0x11
  10087d:	68 a0 00 00 00       	push   $0xa0
  100882:	e8 b2 ff ff ff       	call   100839 <outByte>
  100887:	83 c4 08             	add    $0x8,%esp
  10088a:	6a 20                	push   $0x20
  10088c:	6a 21                	push   $0x21
  10088e:	e8 a6 ff ff ff       	call   100839 <outByte>
  100893:	83 c4 08             	add    $0x8,%esp
  100896:	6a 28                	push   $0x28
  100898:	68 a1 00 00 00       	push   $0xa1
  10089d:	e8 97 ff ff ff       	call   100839 <outByte>
  1008a2:	83 c4 08             	add    $0x8,%esp
  1008a5:	6a 04                	push   $0x4
  1008a7:	6a 21                	push   $0x21
  1008a9:	e8 8b ff ff ff       	call   100839 <outByte>
  1008ae:	83 c4 08             	add    $0x8,%esp
  1008b1:	6a 02                	push   $0x2
  1008b3:	68 a1 00 00 00       	push   $0xa1
  1008b8:	e8 7c ff ff ff       	call   100839 <outByte>
  1008bd:	83 c4 08             	add    $0x8,%esp
  1008c0:	6a 03                	push   $0x3
  1008c2:	6a 21                	push   $0x21
  1008c4:	e8 70 ff ff ff       	call   100839 <outByte>
  1008c9:	83 c4 08             	add    $0x8,%esp
  1008cc:	6a 03                	push   $0x3
  1008ce:	68 a1 00 00 00       	push   $0xa1
  1008d3:	e8 61 ff ff ff       	call   100839 <outByte>
  1008d8:	83 c4 08             	add    $0x8,%esp
  1008db:	90                   	nop
  1008dc:	c9                   	leave  
  1008dd:	c3                   	ret    

001008de <saveIdt>:
  1008de:	55                   	push   %ebp
  1008df:	89 e5                	mov    %esp,%ebp
  1008e1:	e8 5f fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1008e6:	05 1a 67 00 00       	add    $0x671a,%eax
  1008eb:	8b 55 0c             	mov    0xc(%ebp),%edx
  1008ee:	4a                   	dec    %edx
  1008ef:	66 89 90 20 01 00 00 	mov    %dx,0x120(%eax)
  1008f6:	8b 55 08             	mov    0x8(%ebp),%edx
  1008f9:	66 89 90 22 01 00 00 	mov    %dx,0x122(%eax)
  100900:	8b 55 08             	mov    0x8(%ebp),%edx
  100903:	c1 ea 10             	shr    $0x10,%edx
  100906:	66 89 90 24 01 00 00 	mov    %dx,0x124(%eax)
  10090d:	8d 80 20 01 00 00    	lea    0x120(%eax),%eax
  100913:	0f 01 18             	lidtl  (%eax)
  100916:	90                   	nop
  100917:	5d                   	pop    %ebp
  100918:	c3                   	ret    

00100919 <setIntr>:
  100919:	55                   	push   %ebp
  10091a:	89 e5                	mov    %esp,%ebp
  10091c:	e8 24 fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100921:	05 df 66 00 00       	add    $0x66df,%eax
  100926:	8b 45 10             	mov    0x10(%ebp),%eax
  100929:	8b 55 08             	mov    0x8(%ebp),%edx
  10092c:	66 89 02             	mov    %ax,(%edx)
  10092f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100932:	c1 e0 03             	shl    $0x3,%eax
  100935:	8b 55 08             	mov    0x8(%ebp),%edx
  100938:	66 89 42 02          	mov    %ax,0x2(%edx)
  10093c:	8b 45 08             	mov    0x8(%ebp),%eax
  10093f:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100943:	8b 45 08             	mov    0x8(%ebp),%eax
  100946:	8a 50 05             	mov    0x5(%eax),%dl
  100949:	83 e2 f0             	and    $0xfffffff0,%edx
  10094c:	83 ca 0e             	or     $0xe,%edx
  10094f:	88 50 05             	mov    %dl,0x5(%eax)
  100952:	8b 45 08             	mov    0x8(%ebp),%eax
  100955:	8a 50 05             	mov    0x5(%eax),%dl
  100958:	83 e2 ef             	and    $0xffffffef,%edx
  10095b:	88 50 05             	mov    %dl,0x5(%eax)
  10095e:	8b 45 14             	mov    0x14(%ebp),%eax
  100961:	88 c2                	mov    %al,%dl
  100963:	83 e2 03             	and    $0x3,%edx
  100966:	8b 45 08             	mov    0x8(%ebp),%eax
  100969:	83 e2 03             	and    $0x3,%edx
  10096c:	88 d1                	mov    %dl,%cl
  10096e:	c1 e1 05             	shl    $0x5,%ecx
  100971:	8a 50 05             	mov    0x5(%eax),%dl
  100974:	83 e2 9f             	and    $0xffffff9f,%edx
  100977:	09 ca                	or     %ecx,%edx
  100979:	88 50 05             	mov    %dl,0x5(%eax)
  10097c:	8b 45 08             	mov    0x8(%ebp),%eax
  10097f:	8a 50 05             	mov    0x5(%eax),%dl
  100982:	83 ca 80             	or     $0xffffff80,%edx
  100985:	88 50 05             	mov    %dl,0x5(%eax)
  100988:	8b 45 10             	mov    0x10(%ebp),%eax
  10098b:	c1 e8 10             	shr    $0x10,%eax
  10098e:	8b 55 08             	mov    0x8(%ebp),%edx
  100991:	66 89 42 06          	mov    %ax,0x6(%edx)
  100995:	90                   	nop
  100996:	5d                   	pop    %ebp
  100997:	c3                   	ret    

00100998 <setTrap>:
  100998:	55                   	push   %ebp
  100999:	89 e5                	mov    %esp,%ebp
  10099b:	e8 a5 fa ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1009a0:	05 60 66 00 00       	add    $0x6660,%eax
  1009a5:	8b 45 10             	mov    0x10(%ebp),%eax
  1009a8:	8b 55 08             	mov    0x8(%ebp),%edx
  1009ab:	66 89 02             	mov    %ax,(%edx)
  1009ae:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009b1:	c1 e0 03             	shl    $0x3,%eax
  1009b4:	8b 55 08             	mov    0x8(%ebp),%edx
  1009b7:	66 89 42 02          	mov    %ax,0x2(%edx)
  1009bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1009be:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1009c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009c5:	8a 50 05             	mov    0x5(%eax),%dl
  1009c8:	83 ca 0f             	or     $0xf,%edx
  1009cb:	88 50 05             	mov    %dl,0x5(%eax)
  1009ce:	8b 45 08             	mov    0x8(%ebp),%eax
  1009d1:	8a 50 05             	mov    0x5(%eax),%dl
  1009d4:	83 e2 ef             	and    $0xffffffef,%edx
  1009d7:	88 50 05             	mov    %dl,0x5(%eax)
  1009da:	8b 45 14             	mov    0x14(%ebp),%eax
  1009dd:	88 c2                	mov    %al,%dl
  1009df:	83 e2 03             	and    $0x3,%edx
  1009e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009e5:	83 e2 03             	and    $0x3,%edx
  1009e8:	88 d1                	mov    %dl,%cl
  1009ea:	c1 e1 05             	shl    $0x5,%ecx
  1009ed:	8a 50 05             	mov    0x5(%eax),%dl
  1009f0:	83 e2 9f             	and    $0xffffff9f,%edx
  1009f3:	09 ca                	or     %ecx,%edx
  1009f5:	88 50 05             	mov    %dl,0x5(%eax)
  1009f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1009fb:	8a 50 05             	mov    0x5(%eax),%dl
  1009fe:	83 ca 80             	or     $0xffffff80,%edx
  100a01:	88 50 05             	mov    %dl,0x5(%eax)
  100a04:	8b 45 10             	mov    0x10(%ebp),%eax
  100a07:	c1 e8 10             	shr    $0x10,%eax
  100a0a:	8b 55 08             	mov    0x8(%ebp),%edx
  100a0d:	66 89 42 06          	mov    %ax,0x6(%edx)
  100a11:	90                   	nop
  100a12:	5d                   	pop    %ebp
  100a13:	c3                   	ret    

00100a14 <initIdt>:
  100a14:	55                   	push   %ebp
  100a15:	89 e5                	mov    %esp,%ebp
  100a17:	53                   	push   %ebx
  100a18:	83 ec 10             	sub    $0x10,%esp
  100a1b:	e8 15 fe ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100a20:	81 c3 e0 65 00 00    	add    $0x65e0,%ebx
  100a26:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100a2d:	eb 2b                	jmp    100a5a <initIdt+0x46>
  100a2f:	c7 c0 c7 44 10 00    	mov    $0x1044c7,%eax
  100a35:	89 c2                	mov    %eax,%edx
  100a37:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a3a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100a41:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100a47:	01 c8                	add    %ecx,%eax
  100a49:	6a 00                	push   $0x0
  100a4b:	52                   	push   %edx
  100a4c:	6a 01                	push   $0x1
  100a4e:	50                   	push   %eax
  100a4f:	e8 44 ff ff ff       	call   100998 <setTrap>
  100a54:	83 c4 10             	add    $0x10,%esp
  100a57:	ff 45 f8             	incl   -0x8(%ebp)
  100a5a:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
  100a61:	7e cc                	jle    100a2f <initIdt+0x1b>
  100a63:	c7 c0 d1 44 10 00    	mov    $0x1044d1,%eax
  100a69:	89 c2                	mov    %eax,%edx
  100a6b:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100a71:	8d 40 40             	lea    0x40(%eax),%eax
  100a74:	6a 00                	push   $0x0
  100a76:	52                   	push   %edx
  100a77:	6a 01                	push   $0x1
  100a79:	50                   	push   %eax
  100a7a:	e8 19 ff ff ff       	call   100998 <setTrap>
  100a7f:	83 c4 10             	add    $0x10,%esp
  100a82:	c7 c0 d5 44 10 00    	mov    $0x1044d5,%eax
  100a88:	89 c2                	mov    %eax,%edx
  100a8a:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100a90:	8d 40 50             	lea    0x50(%eax),%eax
  100a93:	6a 00                	push   $0x0
  100a95:	52                   	push   %edx
  100a96:	6a 01                	push   $0x1
  100a98:	50                   	push   %eax
  100a99:	e8 fa fe ff ff       	call   100998 <setTrap>
  100a9e:	83 c4 10             	add    $0x10,%esp
  100aa1:	c7 c0 d9 44 10 00    	mov    $0x1044d9,%eax
  100aa7:	89 c2                	mov    %eax,%edx
  100aa9:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100aaf:	8d 40 58             	lea    0x58(%eax),%eax
  100ab2:	6a 00                	push   $0x0
  100ab4:	52                   	push   %edx
  100ab5:	6a 01                	push   $0x1
  100ab7:	50                   	push   %eax
  100ab8:	e8 db fe ff ff       	call   100998 <setTrap>
  100abd:	83 c4 10             	add    $0x10,%esp
  100ac0:	c7 c0 dd 44 10 00    	mov    $0x1044dd,%eax
  100ac6:	89 c2                	mov    %eax,%edx
  100ac8:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100ace:	8d 40 60             	lea    0x60(%eax),%eax
  100ad1:	6a 00                	push   $0x0
  100ad3:	52                   	push   %edx
  100ad4:	6a 01                	push   $0x1
  100ad6:	50                   	push   %eax
  100ad7:	e8 bc fe ff ff       	call   100998 <setTrap>
  100adc:	83 c4 10             	add    $0x10,%esp
  100adf:	c7 c0 e1 44 10 00    	mov    $0x1044e1,%eax
  100ae5:	89 c2                	mov    %eax,%edx
  100ae7:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100aed:	8d 40 68             	lea    0x68(%eax),%eax
  100af0:	6a 00                	push   $0x0
  100af2:	52                   	push   %edx
  100af3:	6a 01                	push   $0x1
  100af5:	50                   	push   %eax
  100af6:	e8 9d fe ff ff       	call   100998 <setTrap>
  100afb:	83 c4 10             	add    $0x10,%esp
  100afe:	c7 c0 e5 44 10 00    	mov    $0x1044e5,%eax
  100b04:	89 c2                	mov    %eax,%edx
  100b06:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b0c:	8d 40 70             	lea    0x70(%eax),%eax
  100b0f:	6a 00                	push   $0x0
  100b11:	52                   	push   %edx
  100b12:	6a 01                	push   $0x1
  100b14:	50                   	push   %eax
  100b15:	e8 7e fe ff ff       	call   100998 <setTrap>
  100b1a:	83 c4 10             	add    $0x10,%esp
  100b1d:	c7 c0 e9 44 10 00    	mov    $0x1044e9,%eax
  100b23:	89 c2                	mov    %eax,%edx
  100b25:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b2b:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  100b31:	6a 00                	push   $0x0
  100b33:	52                   	push   %edx
  100b34:	6a 01                	push   $0x1
  100b36:	50                   	push   %eax
  100b37:	e8 5c fe ff ff       	call   100998 <setTrap>
  100b3c:	83 c4 10             	add    $0x10,%esp
  100b3f:	c7 c0 ed 44 10 00    	mov    $0x1044ed,%eax
  100b45:	89 c2                	mov    %eax,%edx
  100b47:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b4d:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  100b53:	6a 00                	push   $0x0
  100b55:	52                   	push   %edx
  100b56:	6a 01                	push   $0x1
  100b58:	50                   	push   %eax
  100b59:	e8 3a fe ff ff       	call   100998 <setTrap>
  100b5e:	83 c4 10             	add    $0x10,%esp
  100b61:	c7 c0 f1 44 10 00    	mov    $0x1044f1,%eax
  100b67:	89 c2                	mov    %eax,%edx
  100b69:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b6f:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  100b75:	6a 00                	push   $0x0
  100b77:	52                   	push   %edx
  100b78:	6a 01                	push   $0x1
  100b7a:	50                   	push   %eax
  100b7b:	e8 99 fd ff ff       	call   100919 <setIntr>
  100b80:	83 c4 10             	add    $0x10,%esp
  100b83:	c7 c0 f7 44 10 00    	mov    $0x1044f7,%eax
  100b89:	89 c2                	mov    %eax,%edx
  100b8b:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b91:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  100b97:	6a 00                	push   $0x0
  100b99:	52                   	push   %edx
  100b9a:	6a 01                	push   $0x1
  100b9c:	50                   	push   %eax
  100b9d:	e8 77 fd ff ff       	call   100919 <setIntr>
  100ba2:	83 c4 10             	add    $0x10,%esp
  100ba5:	c7 c0 fd 44 10 00    	mov    $0x1044fd,%eax
  100bab:	89 c2                	mov    %eax,%edx
  100bad:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100bb3:	8d 80 00 04 00 00    	lea    0x400(%eax),%eax
  100bb9:	6a 03                	push   $0x3
  100bbb:	52                   	push   %edx
  100bbc:	6a 01                	push   $0x1
  100bbe:	50                   	push   %eax
  100bbf:	e8 55 fd ff ff       	call   100919 <setIntr>
  100bc4:	83 c4 10             	add    $0x10,%esp
  100bc7:	68 00 08 00 00       	push   $0x800
  100bcc:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100bd2:	50                   	push   %eax
  100bd3:	e8 06 fd ff ff       	call   1008de <saveIdt>
  100bd8:	83 c4 08             	add    $0x8,%esp
  100bdb:	90                   	nop
  100bdc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100bdf:	c9                   	leave  
  100be0:	c3                   	ret    

00100be1 <enableInterrupt>:
  100be1:	55                   	push   %ebp
  100be2:	89 e5                	mov    %esp,%ebp
  100be4:	e8 5c f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100be9:	05 17 64 00 00       	add    $0x6417,%eax
  100bee:	fb                   	sti    
  100bef:	90                   	nop
  100bf0:	5d                   	pop    %ebp
  100bf1:	c3                   	ret    

00100bf2 <disableInterrupt>:
  100bf2:	55                   	push   %ebp
  100bf3:	89 e5                	mov    %esp,%ebp
  100bf5:	e8 4b f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100bfa:	05 06 64 00 00       	add    $0x6406,%eax
  100bff:	fa                   	cli    
  100c00:	90                   	nop
  100c01:	5d                   	pop    %ebp
  100c02:	c3                   	ret    

00100c03 <irqHandle>:
  100c03:	55                   	push   %ebp
  100c04:	89 e5                	mov    %esp,%ebp
  100c06:	56                   	push   %esi
  100c07:	53                   	push   %ebx
  100c08:	83 ec 10             	sub    $0x10,%esp
  100c0b:	e8 25 fc ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100c10:	81 c3 f0 63 00 00    	add    $0x63f0,%ebx
  100c16:	b8 10 00 00 00       	mov    $0x10,%eax
  100c1b:	8e d8                	mov    %eax,%ds
  100c1d:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100c23:	8b 10                	mov    (%eax),%edx
  100c25:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  100c2b:	89 d0                	mov    %edx,%eax
  100c2d:	01 c0                	add    %eax,%eax
  100c2f:	01 d0                	add    %edx,%eax
  100c31:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c38:	01 d0                	add    %edx,%eax
  100c3a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c41:	01 d0                	add    %edx,%eax
  100c43:	89 c2                	mov    %eax,%edx
  100c45:	c1 e2 04             	shl    $0x4,%edx
  100c48:	01 d0                	add    %edx,%eax
  100c4a:	c1 e0 02             	shl    $0x2,%eax
  100c4d:	01 c8                	add    %ecx,%eax
  100c4f:	05 4c 40 00 00       	add    $0x404c,%eax
  100c54:	8b 00                	mov    (%eax),%eax
  100c56:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c59:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100c5f:	8b 10                	mov    (%eax),%edx
  100c61:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100c67:	8b 08                	mov    (%eax),%ecx
  100c69:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  100c6f:	89 d0                	mov    %edx,%eax
  100c71:	01 c0                	add    %eax,%eax
  100c73:	01 d0                	add    %edx,%eax
  100c75:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c7c:	01 d0                	add    %edx,%eax
  100c7e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c85:	01 d0                	add    %edx,%eax
  100c87:	89 c2                	mov    %eax,%edx
  100c89:	c1 e2 04             	shl    $0x4,%edx
  100c8c:	01 d0                	add    %edx,%eax
  100c8e:	c1 e0 02             	shl    $0x2,%eax
  100c91:	01 f0                	add    %esi,%eax
  100c93:	05 4c 40 00 00       	add    $0x404c,%eax
  100c98:	8b 10                	mov    (%eax),%edx
  100c9a:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  100ca0:	89 c8                	mov    %ecx,%eax
  100ca2:	01 c0                	add    %eax,%eax
  100ca4:	01 c8                	add    %ecx,%eax
  100ca6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cad:	01 c8                	add    %ecx,%eax
  100caf:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cb6:	01 c8                	add    %ecx,%eax
  100cb8:	89 c1                	mov    %eax,%ecx
  100cba:	c1 e1 04             	shl    $0x4,%ecx
  100cbd:	01 c8                	add    %ecx,%eax
  100cbf:	c1 e0 02             	shl    $0x2,%eax
  100cc2:	01 f0                	add    %esi,%eax
  100cc4:	05 50 40 00 00       	add    $0x4050,%eax
  100cc9:	89 10                	mov    %edx,(%eax)
  100ccb:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100cd1:	8b 08                	mov    (%eax),%ecx
  100cd3:	8b 55 08             	mov    0x8(%ebp),%edx
  100cd6:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  100cdc:	89 c8                	mov    %ecx,%eax
  100cde:	01 c0                	add    %eax,%eax
  100ce0:	01 c8                	add    %ecx,%eax
  100ce2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100ce9:	01 c8                	add    %ecx,%eax
  100ceb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cf2:	01 c8                	add    %ecx,%eax
  100cf4:	89 c1                	mov    %eax,%ecx
  100cf6:	c1 e1 04             	shl    $0x4,%ecx
  100cf9:	01 c8                	add    %ecx,%eax
  100cfb:	c1 e0 02             	shl    $0x2,%eax
  100cfe:	01 f0                	add    %esi,%eax
  100d00:	05 4c 40 00 00       	add    $0x404c,%eax
  100d05:	89 10                	mov    %edx,(%eax)
  100d07:	8b 45 08             	mov    0x8(%ebp),%eax
  100d0a:	8b 40 30             	mov    0x30(%eax),%eax
  100d0d:	83 f8 21             	cmp    $0x21,%eax
  100d10:	74 3f                	je     100d51 <irqHandle+0x14e>
  100d12:	83 f8 21             	cmp    $0x21,%eax
  100d15:	77 0c                	ja     100d23 <irqHandle+0x120>
  100d17:	83 f8 0d             	cmp    $0xd,%eax
  100d1a:	74 15                	je     100d31 <irqHandle+0x12e>
  100d1c:	83 f8 20             	cmp    $0x20,%eax
  100d1f:	74 20                	je     100d41 <irqHandle+0x13e>
  100d21:	eb 4e                	jmp    100d71 <irqHandle+0x16e>
  100d23:	3d 80 00 00 00       	cmp    $0x80,%eax
  100d28:	74 37                	je     100d61 <irqHandle+0x15e>
  100d2a:	83 f8 ff             	cmp    $0xffffffff,%eax
  100d2d:	74 58                	je     100d87 <irqHandle+0x184>
  100d2f:	eb 40                	jmp    100d71 <irqHandle+0x16e>
  100d31:	83 ec 0c             	sub    $0xc,%esp
  100d34:	ff 75 08             	pushl  0x8(%ebp)
  100d37:	e8 a8 1d 00 00       	call   102ae4 <GProtectFaultHandle>
  100d3c:	83 c4 10             	add    $0x10,%esp
  100d3f:	eb 47                	jmp    100d88 <irqHandle+0x185>
  100d41:	83 ec 0c             	sub    $0xc,%esp
  100d44:	ff 75 08             	pushl  0x8(%ebp)
  100d47:	e8 32 01 00 00       	call   100e7e <timerHandle>
  100d4c:	83 c4 10             	add    $0x10,%esp
  100d4f:	eb 37                	jmp    100d88 <irqHandle+0x185>
  100d51:	83 ec 0c             	sub    $0xc,%esp
  100d54:	ff 75 08             	pushl  0x8(%ebp)
  100d57:	e8 71 06 00 00       	call   1013cd <keyboardHandle>
  100d5c:	83 c4 10             	add    $0x10,%esp
  100d5f:	eb 27                	jmp    100d88 <irqHandle+0x185>
  100d61:	83 ec 0c             	sub    $0xc,%esp
  100d64:	ff 75 08             	pushl  0x8(%ebp)
  100d67:	e8 61 00 00 00       	call   100dcd <syscallHandle>
  100d6c:	83 c4 10             	add    $0x10,%esp
  100d6f:	eb 17                	jmp    100d88 <irqHandle+0x185>
  100d71:	83 ec 08             	sub    $0x8,%esp
  100d74:	6a 6b                	push   $0x6b
  100d76:	8d 83 24 d5 ff ff    	lea    -0x2adc(%ebx),%eax
  100d7c:	50                   	push   %eax
  100d7d:	e8 73 34 00 00       	call   1041f5 <abort>
  100d82:	83 c4 10             	add    $0x10,%esp
  100d85:	eb 01                	jmp    100d88 <irqHandle+0x185>
  100d87:	90                   	nop
  100d88:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100d8e:	8b 10                	mov    (%eax),%edx
  100d90:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  100d96:	89 d0                	mov    %edx,%eax
  100d98:	01 c0                	add    %eax,%eax
  100d9a:	01 d0                	add    %edx,%eax
  100d9c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100da3:	01 d0                	add    %edx,%eax
  100da5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100dac:	01 d0                	add    %edx,%eax
  100dae:	89 c2                	mov    %eax,%edx
  100db0:	c1 e2 04             	shl    $0x4,%edx
  100db3:	01 d0                	add    %edx,%eax
  100db5:	c1 e0 02             	shl    $0x2,%eax
  100db8:	01 c8                	add    %ecx,%eax
  100dba:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  100dc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dc3:	89 02                	mov    %eax,(%edx)
  100dc5:	90                   	nop
  100dc6:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100dc9:	5b                   	pop    %ebx
  100dca:	5e                   	pop    %esi
  100dcb:	5d                   	pop    %ebp
  100dcc:	c3                   	ret    

00100dcd <syscallHandle>:
  100dcd:	55                   	push   %ebp
  100dce:	89 e5                	mov    %esp,%ebp
  100dd0:	83 ec 08             	sub    $0x8,%esp
  100dd3:	e8 6d f6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100dd8:	05 28 62 00 00       	add    $0x6228,%eax
  100ddd:	8b 55 08             	mov    0x8(%ebp),%edx
  100de0:	8b 52 2c             	mov    0x2c(%edx),%edx
  100de3:	83 fa 07             	cmp    $0x7,%edx
  100de6:	0f 87 8e 00 00 00    	ja     100e7a <.L23+0x10>
  100dec:	c1 e2 02             	shl    $0x2,%edx
  100def:	8b 94 02 38 d5 ff ff 	mov    -0x2ac8(%edx,%eax,1),%edx
  100df6:	01 d0                	add    %edx,%eax
  100df8:	ff e0                	jmp    *%eax

00100dfa <.L15>:
  100dfa:	83 ec 0c             	sub    $0xc,%esp
  100dfd:	ff 75 08             	pushl  0x8(%ebp)
  100e00:	e8 f2 06 00 00       	call   1014f7 <syscallWrite>
  100e05:	83 c4 10             	add    $0x10,%esp
  100e08:	eb 71                	jmp    100e7b <.L23+0x11>

00100e0a <.L21>:
  100e0a:	83 ec 0c             	sub    $0xc,%esp
  100e0d:	ff 75 08             	pushl  0x8(%ebp)
  100e10:	e8 cf 0a 00 00       	call   1018e4 <syscallRead>
  100e15:	83 c4 10             	add    $0x10,%esp
  100e18:	eb 61                	jmp    100e7b <.L23+0x11>

00100e1a <.L17>:
  100e1a:	83 ec 0c             	sub    $0xc,%esp
  100e1d:	ff 75 08             	pushl  0x8(%ebp)
  100e20:	e8 7c 0e 00 00       	call   101ca1 <syscallFork>
  100e25:	83 c4 10             	add    $0x10,%esp
  100e28:	eb 51                	jmp    100e7b <.L23+0x11>

00100e2a <.L18>:
  100e2a:	83 ec 0c             	sub    $0xc,%esp
  100e2d:	ff 75 08             	pushl  0x8(%ebp)
  100e30:	e8 e1 19 00 00       	call   102816 <syscallExec>
  100e35:	83 c4 10             	add    $0x10,%esp
  100e38:	eb 41                	jmp    100e7b <.L23+0x11>

00100e3a <.L19>:
  100e3a:	83 ec 0c             	sub    $0xc,%esp
  100e3d:	ff 75 08             	pushl  0x8(%ebp)
  100e40:	e8 ad 1a 00 00       	call   1028f2 <syscallSleep>
  100e45:	83 c4 10             	add    $0x10,%esp
  100e48:	eb 31                	jmp    100e7b <.L23+0x11>

00100e4a <.L20>:
  100e4a:	83 ec 0c             	sub    $0xc,%esp
  100e4d:	ff 75 08             	pushl  0x8(%ebp)
  100e50:	e8 3f 1b 00 00       	call   102994 <syscallExit>
  100e55:	83 c4 10             	add    $0x10,%esp
  100e58:	eb 21                	jmp    100e7b <.L23+0x11>

00100e5a <.L22>:
  100e5a:	83 ec 0c             	sub    $0xc,%esp
  100e5d:	ff 75 08             	pushl  0x8(%ebp)
  100e60:	e8 7e 1b 00 00       	call   1029e3 <syscallSem>
  100e65:	83 c4 10             	add    $0x10,%esp
  100e68:	eb 11                	jmp    100e7b <.L23+0x11>

00100e6a <.L23>:
  100e6a:	83 ec 0c             	sub    $0xc,%esp
  100e6d:	ff 75 08             	pushl  0x8(%ebp)
  100e70:	e8 1c 1c 00 00       	call   102a91 <syscallGetPid>
  100e75:	83 c4 10             	add    $0x10,%esp
  100e78:	eb 01                	jmp    100e7b <.L23+0x11>
  100e7a:	90                   	nop
  100e7b:	90                   	nop
  100e7c:	c9                   	leave  
  100e7d:	c3                   	ret    

00100e7e <timerHandle>:
  100e7e:	55                   	push   %ebp
  100e7f:	89 e5                	mov    %esp,%ebp
  100e81:	56                   	push   %esi
  100e82:	53                   	push   %ebx
  100e83:	83 ec 10             	sub    $0x10,%esp
  100e86:	e8 8d 1c 00 00       	call   102b18 <__x86.get_pc_thunk.cx>
  100e8b:	81 c1 75 61 00 00    	add    $0x6175,%ecx
  100e91:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100e97:	8b 00                	mov    (%eax),%eax
  100e99:	40                   	inc    %eax
  100e9a:	bb 09 00 00 00       	mov    $0x9,%ebx
  100e9f:	99                   	cltd   
  100ea0:	f7 fb                	idiv   %ebx
  100ea2:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100ea5:	e9 27 01 00 00       	jmp    100fd1 <timerHandle+0x153>
  100eaa:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  100eb0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eb3:	89 d0                	mov    %edx,%eax
  100eb5:	01 c0                	add    %eax,%eax
  100eb7:	01 d0                	add    %edx,%eax
  100eb9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ec0:	01 d0                	add    %edx,%eax
  100ec2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ec9:	01 d0                	add    %edx,%eax
  100ecb:	89 c2                	mov    %eax,%edx
  100ecd:	c1 e2 04             	shl    $0x4,%edx
  100ed0:	01 d0                	add    %edx,%eax
  100ed2:	c1 e0 02             	shl    $0x2,%eax
  100ed5:	01 d8                	add    %ebx,%eax
  100ed7:	05 54 40 00 00       	add    $0x4054,%eax
  100edc:	8b 00                	mov    (%eax),%eax
  100ede:	83 f8 02             	cmp    $0x2,%eax
  100ee1:	0f 85 db 00 00 00    	jne    100fc2 <timerHandle+0x144>
  100ee7:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  100eed:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ef0:	89 d0                	mov    %edx,%eax
  100ef2:	01 c0                	add    %eax,%eax
  100ef4:	01 d0                	add    %edx,%eax
  100ef6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100efd:	01 d0                	add    %edx,%eax
  100eff:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f06:	01 d0                	add    %edx,%eax
  100f08:	89 c2                	mov    %eax,%edx
  100f0a:	c1 e2 04             	shl    $0x4,%edx
  100f0d:	01 d0                	add    %edx,%eax
  100f0f:	c1 e0 02             	shl    $0x2,%eax
  100f12:	01 d8                	add    %ebx,%eax
  100f14:	05 5c 40 00 00       	add    $0x405c,%eax
  100f19:	8b 00                	mov    (%eax),%eax
  100f1b:	8d 58 ff             	lea    -0x1(%eax),%ebx
  100f1e:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  100f24:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f27:	89 d0                	mov    %edx,%eax
  100f29:	01 c0                	add    %eax,%eax
  100f2b:	01 d0                	add    %edx,%eax
  100f2d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f34:	01 d0                	add    %edx,%eax
  100f36:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f3d:	01 d0                	add    %edx,%eax
  100f3f:	89 c2                	mov    %eax,%edx
  100f41:	c1 e2 04             	shl    $0x4,%edx
  100f44:	01 d0                	add    %edx,%eax
  100f46:	c1 e0 02             	shl    $0x2,%eax
  100f49:	01 f0                	add    %esi,%eax
  100f4b:	05 5c 40 00 00       	add    $0x405c,%eax
  100f50:	89 18                	mov    %ebx,(%eax)
  100f52:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  100f58:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f5b:	89 d0                	mov    %edx,%eax
  100f5d:	01 c0                	add    %eax,%eax
  100f5f:	01 d0                	add    %edx,%eax
  100f61:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f68:	01 d0                	add    %edx,%eax
  100f6a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f71:	01 d0                	add    %edx,%eax
  100f73:	89 c2                	mov    %eax,%edx
  100f75:	c1 e2 04             	shl    $0x4,%edx
  100f78:	01 d0                	add    %edx,%eax
  100f7a:	c1 e0 02             	shl    $0x2,%eax
  100f7d:	01 d8                	add    %ebx,%eax
  100f7f:	05 5c 40 00 00       	add    $0x405c,%eax
  100f84:	8b 00                	mov    (%eax),%eax
  100f86:	85 c0                	test   %eax,%eax
  100f88:	75 38                	jne    100fc2 <timerHandle+0x144>
  100f8a:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  100f90:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f93:	89 d0                	mov    %edx,%eax
  100f95:	01 c0                	add    %eax,%eax
  100f97:	01 d0                	add    %edx,%eax
  100f99:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fa0:	01 d0                	add    %edx,%eax
  100fa2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fa9:	01 d0                	add    %edx,%eax
  100fab:	89 c2                	mov    %eax,%edx
  100fad:	c1 e2 04             	shl    $0x4,%edx
  100fb0:	01 d0                	add    %edx,%eax
  100fb2:	c1 e0 02             	shl    $0x2,%eax
  100fb5:	01 d8                	add    %ebx,%eax
  100fb7:	05 54 40 00 00       	add    $0x4054,%eax
  100fbc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  100fc2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fc5:	40                   	inc    %eax
  100fc6:	bb 09 00 00 00       	mov    $0x9,%ebx
  100fcb:	99                   	cltd   
  100fcc:	f7 fb                	idiv   %ebx
  100fce:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100fd1:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100fd7:	8b 00                	mov    (%eax),%eax
  100fd9:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  100fdc:	0f 85 c8 fe ff ff    	jne    100eaa <timerHandle+0x2c>
  100fe2:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  100fe8:	8b 10                	mov    (%eax),%edx
  100fea:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  100ff0:	89 d0                	mov    %edx,%eax
  100ff2:	01 c0                	add    %eax,%eax
  100ff4:	01 d0                	add    %edx,%eax
  100ff6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ffd:	01 d0                	add    %edx,%eax
  100fff:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101006:	01 d0                	add    %edx,%eax
  101008:	89 c2                	mov    %eax,%edx
  10100a:	c1 e2 04             	shl    $0x4,%edx
  10100d:	01 d0                	add    %edx,%eax
  10100f:	c1 e0 02             	shl    $0x2,%eax
  101012:	01 d8                	add    %ebx,%eax
  101014:	05 54 40 00 00       	add    $0x4054,%eax
  101019:	8b 00                	mov    (%eax),%eax
  10101b:	83 f8 01             	cmp    $0x1,%eax
  10101e:	0f 85 b0 00 00 00    	jne    1010d4 <timerHandle+0x256>
  101024:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10102a:	8b 10                	mov    (%eax),%edx
  10102c:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101032:	89 d0                	mov    %edx,%eax
  101034:	01 c0                	add    %eax,%eax
  101036:	01 d0                	add    %edx,%eax
  101038:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10103f:	01 d0                	add    %edx,%eax
  101041:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101048:	01 d0                	add    %edx,%eax
  10104a:	89 c2                	mov    %eax,%edx
  10104c:	c1 e2 04             	shl    $0x4,%edx
  10104f:	01 d0                	add    %edx,%eax
  101051:	c1 e0 02             	shl    $0x2,%eax
  101054:	01 d8                	add    %ebx,%eax
  101056:	05 58 40 00 00       	add    $0x4058,%eax
  10105b:	8b 00                	mov    (%eax),%eax
  10105d:	83 f8 10             	cmp    $0x10,%eax
  101060:	74 72                	je     1010d4 <timerHandle+0x256>
  101062:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101068:	8b 10                	mov    (%eax),%edx
  10106a:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101070:	89 d0                	mov    %edx,%eax
  101072:	01 c0                	add    %eax,%eax
  101074:	01 d0                	add    %edx,%eax
  101076:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  10107d:	01 f0                	add    %esi,%eax
  10107f:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  101086:	01 f0                	add    %esi,%eax
  101088:	89 c6                	mov    %eax,%esi
  10108a:	c1 e6 04             	shl    $0x4,%esi
  10108d:	01 f0                	add    %esi,%eax
  10108f:	c1 e0 02             	shl    $0x2,%eax
  101092:	01 d8                	add    %ebx,%eax
  101094:	05 58 40 00 00       	add    $0x4058,%eax
  101099:	8b 00                	mov    (%eax),%eax
  10109b:	8d 58 01             	lea    0x1(%eax),%ebx
  10109e:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1010a4:	89 d0                	mov    %edx,%eax
  1010a6:	01 c0                	add    %eax,%eax
  1010a8:	01 d0                	add    %edx,%eax
  1010aa:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010b1:	01 d0                	add    %edx,%eax
  1010b3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010ba:	01 d0                	add    %edx,%eax
  1010bc:	89 c2                	mov    %eax,%edx
  1010be:	c1 e2 04             	shl    $0x4,%edx
  1010c1:	01 d0                	add    %edx,%eax
  1010c3:	c1 e0 02             	shl    $0x2,%eax
  1010c6:	01 c8                	add    %ecx,%eax
  1010c8:	05 58 40 00 00       	add    $0x4058,%eax
  1010cd:	89 18                	mov    %ebx,(%eax)
  1010cf:	e9 f2 02 00 00       	jmp    1013c6 <timerHandle+0x548>
  1010d4:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1010da:	8b 10                	mov    (%eax),%edx
  1010dc:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  1010e2:	89 d0                	mov    %edx,%eax
  1010e4:	01 c0                	add    %eax,%eax
  1010e6:	01 d0                	add    %edx,%eax
  1010e8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010ef:	01 d0                	add    %edx,%eax
  1010f1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010f8:	01 d0                	add    %edx,%eax
  1010fa:	89 c2                	mov    %eax,%edx
  1010fc:	c1 e2 04             	shl    $0x4,%edx
  1010ff:	01 d0                	add    %edx,%eax
  101101:	c1 e0 02             	shl    $0x2,%eax
  101104:	01 d8                	add    %ebx,%eax
  101106:	05 54 40 00 00       	add    $0x4054,%eax
  10110b:	8b 00                	mov    (%eax),%eax
  10110d:	83 f8 01             	cmp    $0x1,%eax
  101110:	75 7a                	jne    10118c <timerHandle+0x30e>
  101112:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101118:	8b 10                	mov    (%eax),%edx
  10111a:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101120:	89 d0                	mov    %edx,%eax
  101122:	01 c0                	add    %eax,%eax
  101124:	01 d0                	add    %edx,%eax
  101126:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10112d:	01 d0                	add    %edx,%eax
  10112f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101136:	01 d0                	add    %edx,%eax
  101138:	89 c2                	mov    %eax,%edx
  10113a:	c1 e2 04             	shl    $0x4,%edx
  10113d:	01 d0                	add    %edx,%eax
  10113f:	c1 e0 02             	shl    $0x2,%eax
  101142:	01 d8                	add    %ebx,%eax
  101144:	05 54 40 00 00       	add    $0x4054,%eax
  101149:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10114f:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101155:	8b 10                	mov    (%eax),%edx
  101157:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  10115d:	89 d0                	mov    %edx,%eax
  10115f:	01 c0                	add    %eax,%eax
  101161:	01 d0                	add    %edx,%eax
  101163:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10116a:	01 d0                	add    %edx,%eax
  10116c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101173:	01 d0                	add    %edx,%eax
  101175:	89 c2                	mov    %eax,%edx
  101177:	c1 e2 04             	shl    $0x4,%edx
  10117a:	01 d0                	add    %edx,%eax
  10117c:	c1 e0 02             	shl    $0x2,%eax
  10117f:	01 d8                	add    %ebx,%eax
  101181:	05 58 40 00 00       	add    $0x4058,%eax
  101186:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10118c:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101192:	8b 00                	mov    (%eax),%eax
  101194:	40                   	inc    %eax
  101195:	bb 09 00 00 00       	mov    $0x9,%ebx
  10119a:	99                   	cltd   
  10119b:	f7 fb                	idiv   %ebx
  10119d:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1011a0:	eb 4d                	jmp    1011ef <timerHandle+0x371>
  1011a2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1011a6:	74 38                	je     1011e0 <timerHandle+0x362>
  1011a8:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  1011ae:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1011b1:	89 d0                	mov    %edx,%eax
  1011b3:	01 c0                	add    %eax,%eax
  1011b5:	01 d0                	add    %edx,%eax
  1011b7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011be:	01 d0                	add    %edx,%eax
  1011c0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011c7:	01 d0                	add    %edx,%eax
  1011c9:	89 c2                	mov    %eax,%edx
  1011cb:	c1 e2 04             	shl    $0x4,%edx
  1011ce:	01 d0                	add    %edx,%eax
  1011d0:	c1 e0 02             	shl    $0x2,%eax
  1011d3:	01 d8                	add    %ebx,%eax
  1011d5:	05 54 40 00 00       	add    $0x4054,%eax
  1011da:	8b 00                	mov    (%eax),%eax
  1011dc:	85 c0                	test   %eax,%eax
  1011de:	74 1e                	je     1011fe <timerHandle+0x380>
  1011e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1011e3:	40                   	inc    %eax
  1011e4:	bb 09 00 00 00       	mov    $0x9,%ebx
  1011e9:	99                   	cltd   
  1011ea:	f7 fb                	idiv   %ebx
  1011ec:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1011ef:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1011f5:	8b 00                	mov    (%eax),%eax
  1011f7:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1011fa:	75 a6                	jne    1011a2 <timerHandle+0x324>
  1011fc:	eb 01                	jmp    1011ff <timerHandle+0x381>
  1011fe:	90                   	nop
  1011ff:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101205:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101208:	89 d0                	mov    %edx,%eax
  10120a:	01 c0                	add    %eax,%eax
  10120c:	01 d0                	add    %edx,%eax
  10120e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101215:	01 d0                	add    %edx,%eax
  101217:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10121e:	01 d0                	add    %edx,%eax
  101220:	89 c2                	mov    %eax,%edx
  101222:	c1 e2 04             	shl    $0x4,%edx
  101225:	01 d0                	add    %edx,%eax
  101227:	c1 e0 02             	shl    $0x2,%eax
  10122a:	01 d8                	add    %ebx,%eax
  10122c:	05 54 40 00 00       	add    $0x4054,%eax
  101231:	8b 00                	mov    (%eax),%eax
  101233:	85 c0                	test   %eax,%eax
  101235:	74 07                	je     10123e <timerHandle+0x3c0>
  101237:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10123e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101244:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101247:	89 10                	mov    %edx,(%eax)
  101249:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10124f:	8b 10                	mov    (%eax),%edx
  101251:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101257:	89 d0                	mov    %edx,%eax
  101259:	01 c0                	add    %eax,%eax
  10125b:	01 d0                	add    %edx,%eax
  10125d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101264:	01 d0                	add    %edx,%eax
  101266:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10126d:	01 d0                	add    %edx,%eax
  10126f:	89 c2                	mov    %eax,%edx
  101271:	c1 e2 04             	shl    $0x4,%edx
  101274:	01 d0                	add    %edx,%eax
  101276:	c1 e0 02             	shl    $0x2,%eax
  101279:	01 d8                	add    %ebx,%eax
  10127b:	05 54 40 00 00       	add    $0x4054,%eax
  101280:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  101286:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10128c:	8b 10                	mov    (%eax),%edx
  10128e:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101294:	89 d0                	mov    %edx,%eax
  101296:	01 c0                	add    %eax,%eax
  101298:	01 d0                	add    %edx,%eax
  10129a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012a1:	01 d0                	add    %edx,%eax
  1012a3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012aa:	01 d0                	add    %edx,%eax
  1012ac:	89 c2                	mov    %eax,%edx
  1012ae:	c1 e2 04             	shl    $0x4,%edx
  1012b1:	01 d0                	add    %edx,%eax
  1012b3:	c1 e0 02             	shl    $0x2,%eax
  1012b6:	01 d8                	add    %ebx,%eax
  1012b8:	05 58 40 00 00       	add    $0x4058,%eax
  1012bd:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  1012c3:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1012c9:	8b 10                	mov    (%eax),%edx
  1012cb:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  1012d1:	89 d0                	mov    %edx,%eax
  1012d3:	01 c0                	add    %eax,%eax
  1012d5:	01 d0                	add    %edx,%eax
  1012d7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012de:	01 d0                	add    %edx,%eax
  1012e0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012e7:	01 d0                	add    %edx,%eax
  1012e9:	89 c2                	mov    %eax,%edx
  1012eb:	c1 e2 04             	shl    $0x4,%edx
  1012ee:	01 d0                	add    %edx,%eax
  1012f0:	c1 e0 02             	shl    $0x2,%eax
  1012f3:	01 d8                	add    %ebx,%eax
  1012f5:	05 4c 40 00 00       	add    $0x404c,%eax
  1012fa:	8b 00                	mov    (%eax),%eax
  1012fc:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1012ff:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101305:	8b 10                	mov    (%eax),%edx
  101307:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10130d:	8b 18                	mov    (%eax),%ebx
  10130f:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101315:	89 d0                	mov    %edx,%eax
  101317:	01 c0                	add    %eax,%eax
  101319:	01 d0                	add    %edx,%eax
  10131b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101322:	01 d0                	add    %edx,%eax
  101324:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10132b:	01 d0                	add    %edx,%eax
  10132d:	89 c2                	mov    %eax,%edx
  10132f:	c1 e2 04             	shl    $0x4,%edx
  101332:	01 d0                	add    %edx,%eax
  101334:	c1 e0 02             	shl    $0x2,%eax
  101337:	01 f0                	add    %esi,%eax
  101339:	05 50 40 00 00       	add    $0x4050,%eax
  10133e:	8b 10                	mov    (%eax),%edx
  101340:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101346:	89 d8                	mov    %ebx,%eax
  101348:	01 c0                	add    %eax,%eax
  10134a:	01 d8                	add    %ebx,%eax
  10134c:	8d 1c c5 00 00 00 00 	lea    0x0(,%eax,8),%ebx
  101353:	01 d8                	add    %ebx,%eax
  101355:	8d 1c c5 00 00 00 00 	lea    0x0(,%eax,8),%ebx
  10135c:	01 d8                	add    %ebx,%eax
  10135e:	89 c3                	mov    %eax,%ebx
  101360:	c1 e3 04             	shl    $0x4,%ebx
  101363:	01 d8                	add    %ebx,%eax
  101365:	c1 e0 02             	shl    $0x2,%eax
  101368:	01 f0                	add    %esi,%eax
  10136a:	05 4c 40 00 00       	add    $0x404c,%eax
  10136f:	89 10                	mov    %edx,(%eax)
  101371:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101377:	8b 10                	mov    (%eax),%edx
  101379:	89 d0                	mov    %edx,%eax
  10137b:	01 c0                	add    %eax,%eax
  10137d:	01 d0                	add    %edx,%eax
  10137f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101386:	01 d0                	add    %edx,%eax
  101388:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10138f:	01 d0                	add    %edx,%eax
  101391:	89 c2                	mov    %eax,%edx
  101393:	c1 e2 04             	shl    $0x4,%edx
  101396:	01 d0                	add    %edx,%eax
  101398:	c1 e0 02             	shl    $0x2,%eax
  10139b:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  1013a1:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  1013a7:	01 d0                	add    %edx,%eax
  1013a9:	83 c0 0c             	add    $0xc,%eax
  1013ac:	89 c2                	mov    %eax,%edx
  1013ae:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  1013b4:	89 50 04             	mov    %edx,0x4(%eax)
  1013b7:	8b 65 f0             	mov    -0x10(%ebp),%esp
  1013ba:	0f a9                	pop    %gs
  1013bc:	0f a1                	pop    %fs
  1013be:	07                   	pop    %es
  1013bf:	1f                   	pop    %ds
  1013c0:	61                   	popa   
  1013c1:	83 c4 08             	add    $0x8,%esp
  1013c4:	cf                   	iret   
  1013c5:	90                   	nop
  1013c6:	83 c4 10             	add    $0x10,%esp
  1013c9:	5b                   	pop    %ebx
  1013ca:	5e                   	pop    %esi
  1013cb:	5d                   	pop    %ebp
  1013cc:	c3                   	ret    

001013cd <keyboardHandle>:
  1013cd:	55                   	push   %ebp
  1013ce:	89 e5                	mov    %esp,%ebp
  1013d0:	53                   	push   %ebx
  1013d1:	83 ec 14             	sub    $0x14,%esp
  1013d4:	e8 5c f4 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1013d9:	81 c3 27 5c 00 00    	add    $0x5c27,%ebx
  1013df:	e8 a3 1a 00 00       	call   102e87 <getKeyCode>
  1013e4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1013e7:	83 ec 0c             	sub    $0xc,%esp
  1013ea:	ff 75 f4             	pushl  -0xc(%ebp)
  1013ed:	e8 39 1b 00 00       	call   102f2b <getChar>
  1013f2:	83 c4 10             	add    $0x10,%esp
  1013f5:	88 45 ef             	mov    %al,-0x11(%ebp)
  1013f8:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1013fc:	74 07                	je     101405 <keyboardHandle+0x38>
  1013fe:	8a 45 ef             	mov    -0x11(%ebp),%al
  101401:	84 c0                	test   %al,%al
  101403:	75 12                	jne    101417 <keyboardHandle+0x4a>
  101405:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  10140b:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  101412:	e9 db 00 00 00       	jmp    1014f2 <keyboardHandle+0x125>
  101417:	83 ec 08             	sub    $0x8,%esp
  10141a:	6a 01                	push   $0x1
  10141c:	8d 45 ef             	lea    -0x11(%ebp),%eax
  10141f:	50                   	push   %eax
  101420:	e8 35 01 00 00       	call   10155a <WriteStdOut>
  101425:	83 c4 10             	add    $0x10,%esp
  101428:	c7 c0 60 8a 10 00    	mov    $0x108a60,%eax
  10142e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101431:	c7 c0 40 8a 10 00    	mov    $0x108a40,%eax
  101437:	8b 00                	mov    (%eax),%eax
  101439:	89 c2                	mov    %eax,%edx
  10143b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10143e:	01 c2                	add    %eax,%edx
  101440:	8a 45 ef             	mov    -0x11(%ebp),%al
  101443:	88 02                	mov    %al,(%edx)
  101445:	c7 c0 40 8a 10 00    	mov    $0x108a40,%eax
  10144b:	8b 00                	mov    (%eax),%eax
  10144d:	40                   	inc    %eax
  10144e:	25 ff 00 00 80       	and    $0x800000ff,%eax
  101453:	85 c0                	test   %eax,%eax
  101455:	79 07                	jns    10145e <keyboardHandle+0x91>
  101457:	48                   	dec    %eax
  101458:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  10145d:	40                   	inc    %eax
  10145e:	89 c2                	mov    %eax,%edx
  101460:	c7 c0 40 8a 10 00    	mov    $0x108a40,%eax
  101466:	89 10                	mov    %edx,(%eax)
  101468:	8a 45 ef             	mov    -0x11(%ebp),%al
  10146b:	3c 0d                	cmp    $0xd,%al
  10146d:	74 07                	je     101476 <keyboardHandle+0xa9>
  10146f:	8a 45 ef             	mov    -0x11(%ebp),%al
  101472:	3c 0a                	cmp    $0xa,%al
  101474:	75 6c                	jne    1014e2 <keyboardHandle+0x115>
  101476:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  10147c:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
  101483:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  101489:	8b 40 1c             	mov    0x1c(%eax),%eax
  10148c:	2d 84 40 00 00       	sub    $0x4084,%eax
  101491:	89 83 28 01 00 00    	mov    %eax,0x128(%ebx)
  101497:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  10149d:	8b 40 1c             	mov    0x1c(%eax),%eax
  1014a0:	8b 50 04             	mov    0x4(%eax),%edx
  1014a3:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  1014a9:	89 50 1c             	mov    %edx,0x1c(%eax)
  1014ac:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  1014b2:	8b 40 1c             	mov    0x1c(%eax),%eax
  1014b5:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  1014bb:	8d 52 18             	lea    0x18(%edx),%edx
  1014be:	89 10                	mov    %edx,(%eax)
  1014c0:	8b 83 28 01 00 00    	mov    0x128(%ebx),%eax
  1014c6:	8b 80 60 40 00 00    	mov    0x4060(%eax),%eax
  1014cc:	85 c0                	test   %eax,%eax
  1014ce:	74 1f                	je     1014ef <keyboardHandle+0x122>
  1014d0:	8b 83 28 01 00 00    	mov    0x128(%ebx),%eax
  1014d6:	c7 80 54 40 00 00 00 	movl   $0x0,0x4054(%eax)
  1014dd:	00 00 00 
  1014e0:	eb 0d                	jmp    1014ef <keyboardHandle+0x122>
  1014e2:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  1014e8:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  1014ef:	cd 20                	int    $0x20
  1014f1:	90                   	nop
  1014f2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1014f5:	c9                   	leave  
  1014f6:	c3                   	ret    

001014f7 <syscallWrite>:
  1014f7:	55                   	push   %ebp
  1014f8:	89 e5                	mov    %esp,%ebp
  1014fa:	83 ec 08             	sub    $0x8,%esp
  1014fd:	e8 43 ef ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101502:	05 fe 5a 00 00       	add    $0x5afe,%eax
  101507:	8b 55 08             	mov    0x8(%ebp),%edx
  10150a:	8b 52 28             	mov    0x28(%edx),%edx
  10150d:	85 d2                	test   %edx,%edx
  10150f:	74 07                	je     101518 <syscallWrite+0x21>
  101511:	83 fa 03             	cmp    $0x3,%edx
  101514:	74 1f                	je     101535 <syscallWrite+0x3e>
  101516:	eb 3f                	jmp    101557 <syscallWrite+0x60>
  101518:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  10151e:	8b 00                	mov    (%eax),%eax
  101520:	83 f8 01             	cmp    $0x1,%eax
  101523:	75 2e                	jne    101553 <syscallWrite+0x5c>
  101525:	83 ec 0c             	sub    $0xc,%esp
  101528:	ff 75 08             	pushl  0x8(%ebp)
  10152b:	e8 9f 01 00 00       	call   1016cf <syscallWriteStdOut>
  101530:	83 c4 10             	add    $0x10,%esp
  101533:	eb 1e                	jmp    101553 <syscallWrite+0x5c>
  101535:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  10153b:	8b 40 30             	mov    0x30(%eax),%eax
  10153e:	83 f8 01             	cmp    $0x1,%eax
  101541:	75 13                	jne    101556 <syscallWrite+0x5f>
  101543:	83 ec 0c             	sub    $0xc,%esp
  101546:	ff 75 08             	pushl  0x8(%ebp)
  101549:	e8 14 03 00 00       	call   101862 <syscallWriteShMem>
  10154e:	83 c4 10             	add    $0x10,%esp
  101551:	eb 03                	jmp    101556 <syscallWrite+0x5f>
  101553:	90                   	nop
  101554:	eb 01                	jmp    101557 <syscallWrite+0x60>
  101556:	90                   	nop
  101557:	90                   	nop
  101558:	c9                   	leave  
  101559:	c3                   	ret    

0010155a <WriteStdOut>:
  10155a:	55                   	push   %ebp
  10155b:	89 e5                	mov    %esp,%ebp
  10155d:	53                   	push   %ebx
  10155e:	83 ec 14             	sub    $0x14,%esp
  101561:	e8 cf f2 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101566:	81 c3 9a 5a 00 00    	add    $0x5a9a,%ebx
  10156c:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  101570:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  101577:	66 c7 45 ea 00 00    	movw   $0x0,-0x16(%ebp)
  10157d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101584:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10158b:	e9 10 01 00 00       	jmp    1016a0 <WriteStdOut+0x146>
  101590:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101593:	8b 45 08             	mov    0x8(%ebp),%eax
  101596:	01 d0                	add    %edx,%eax
  101598:	8a 00                	mov    (%eax),%al
  10159a:	88 45 f3             	mov    %al,-0xd(%ebp)
  10159d:	80 7d f3 0a          	cmpb   $0xa,-0xd(%ebp)
  1015a1:	75 52                	jne    1015f5 <WriteStdOut+0x9b>
  1015a3:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  1015a9:	8b 00                	mov    (%eax),%eax
  1015ab:	8d 50 01             	lea    0x1(%eax),%edx
  1015ae:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  1015b4:	89 10                	mov    %edx,(%eax)
  1015b6:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1015bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1015c2:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  1015c8:	8b 00                	mov    (%eax),%eax
  1015ca:	83 f8 19             	cmp    $0x19,%eax
  1015cd:	0f 85 ca 00 00 00    	jne    10169d <WriteStdOut+0x143>
  1015d3:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  1015d9:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  1015df:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1015e5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1015eb:	e8 da 29 00 00       	call   103fca <scrollScreen>
  1015f0:	e9 a8 00 00 00       	jmp    10169d <WriteStdOut+0x143>
  1015f5:	66 0f be 45 f3       	movsbw -0xd(%ebp),%ax
  1015fa:	80 cc 0c             	or     $0xc,%ah
  1015fd:	66 89 45 ea          	mov    %ax,-0x16(%ebp)
  101601:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  101607:	8b 10                	mov    (%eax),%edx
  101609:	89 d0                	mov    %edx,%eax
  10160b:	c1 e0 02             	shl    $0x2,%eax
  10160e:	01 d0                	add    %edx,%eax
  101610:	c1 e0 04             	shl    $0x4,%eax
  101613:	89 c2                	mov    %eax,%edx
  101615:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  10161b:	8b 00                	mov    (%eax),%eax
  10161d:	01 d0                	add    %edx,%eax
  10161f:	01 c0                	add    %eax,%eax
  101621:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101624:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101627:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  10162d:	66 8b 45 ea          	mov    -0x16(%ebp),%ax
  101631:	66 89 02             	mov    %ax,(%edx)
  101634:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  10163a:	8b 00                	mov    (%eax),%eax
  10163c:	8d 50 01             	lea    0x1(%eax),%edx
  10163f:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101645:	89 10                	mov    %edx,(%eax)
  101647:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  10164d:	8b 00                	mov    (%eax),%eax
  10164f:	83 f8 50             	cmp    $0x50,%eax
  101652:	75 49                	jne    10169d <WriteStdOut+0x143>
  101654:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  10165a:	8b 00                	mov    (%eax),%eax
  10165c:	8d 50 01             	lea    0x1(%eax),%edx
  10165f:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  101665:	89 10                	mov    %edx,(%eax)
  101667:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  10166d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101673:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  101679:	8b 00                	mov    (%eax),%eax
  10167b:	83 f8 19             	cmp    $0x19,%eax
  10167e:	75 1d                	jne    10169d <WriteStdOut+0x143>
  101680:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  101686:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  10168c:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101692:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101698:	e8 2d 29 00 00       	call   103fca <scrollScreen>
  10169d:	ff 45 f4             	incl   -0xc(%ebp)
  1016a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1016a3:	3b 45 0c             	cmp    0xc(%ebp),%eax
  1016a6:	0f 8c e4 fe ff ff    	jl     101590 <WriteStdOut+0x36>
  1016ac:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1016b2:	8b 10                	mov    (%eax),%edx
  1016b4:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  1016ba:	8b 00                	mov    (%eax),%eax
  1016bc:	83 ec 08             	sub    $0x8,%esp
  1016bf:	52                   	push   %edx
  1016c0:	50                   	push   %eax
  1016c1:	e8 91 28 00 00       	call   103f57 <updateCursor>
  1016c6:	83 c4 10             	add    $0x10,%esp
  1016c9:	90                   	nop
  1016ca:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1016cd:	c9                   	leave  
  1016ce:	c3                   	ret    

001016cf <syscallWriteStdOut>:
  1016cf:	55                   	push   %ebp
  1016d0:	89 e5                	mov    %esp,%ebp
  1016d2:	53                   	push   %ebx
  1016d3:	83 ec 24             	sub    $0x24,%esp
  1016d6:	e8 5a f1 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1016db:	81 c3 25 59 00 00    	add    $0x5925,%ebx
  1016e1:	8b 45 08             	mov    0x8(%ebp),%eax
  1016e4:	8b 40 0c             	mov    0xc(%eax),%eax
  1016e7:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1016ea:	8b 45 08             	mov    0x8(%ebp),%eax
  1016ed:	8b 40 24             	mov    0x24(%eax),%eax
  1016f0:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1016f3:	8b 45 08             	mov    0x8(%ebp),%eax
  1016f6:	8b 40 20             	mov    0x20(%eax),%eax
  1016f9:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1016fc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101703:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  10170a:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
  10170e:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%ebp)
  101714:	8e 45 e0             	mov    -0x20(%ebp),%es
  101717:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10171e:	e9 10 01 00 00       	jmp    101833 <syscallWriteStdOut+0x164>
  101723:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101726:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101729:	01 d0                	add    %edx,%eax
  10172b:	26 8a 00             	mov    %es:(%eax),%al
  10172e:	88 45 e7             	mov    %al,-0x19(%ebp)
  101731:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
  101735:	75 52                	jne    101789 <syscallWriteStdOut+0xba>
  101737:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  10173d:	8b 00                	mov    (%eax),%eax
  10173f:	8d 50 01             	lea    0x1(%eax),%edx
  101742:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  101748:	89 10                	mov    %edx,(%eax)
  10174a:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101750:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101756:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  10175c:	8b 00                	mov    (%eax),%eax
  10175e:	83 f8 19             	cmp    $0x19,%eax
  101761:	0f 85 c9 00 00 00    	jne    101830 <syscallWriteStdOut+0x161>
  101767:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  10176d:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  101773:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101779:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10177f:	e8 46 28 00 00       	call   103fca <scrollScreen>
  101784:	e9 a7 00 00 00       	jmp    101830 <syscallWriteStdOut+0x161>
  101789:	66 0f be 45 e7       	movsbw -0x19(%ebp),%ax
  10178e:	80 cc 0c             	or     $0xc,%ah
  101791:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  101795:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  10179b:	8b 10                	mov    (%eax),%edx
  10179d:	89 d0                	mov    %edx,%eax
  10179f:	c1 e0 02             	shl    $0x2,%eax
  1017a2:	01 d0                	add    %edx,%eax
  1017a4:	c1 e0 04             	shl    $0x4,%eax
  1017a7:	89 c2                	mov    %eax,%edx
  1017a9:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1017af:	8b 00                	mov    (%eax),%eax
  1017b1:	01 d0                	add    %edx,%eax
  1017b3:	01 c0                	add    %eax,%eax
  1017b5:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1017b8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1017bb:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  1017c1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1017c4:	66 89 02             	mov    %ax,(%edx)
  1017c7:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1017cd:	8b 00                	mov    (%eax),%eax
  1017cf:	8d 50 01             	lea    0x1(%eax),%edx
  1017d2:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1017d8:	89 10                	mov    %edx,(%eax)
  1017da:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  1017e0:	8b 00                	mov    (%eax),%eax
  1017e2:	83 f8 50             	cmp    $0x50,%eax
  1017e5:	75 49                	jne    101830 <syscallWriteStdOut+0x161>
  1017e7:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  1017ed:	8b 00                	mov    (%eax),%eax
  1017ef:	8d 50 01             	lea    0x1(%eax),%edx
  1017f2:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  1017f8:	89 10                	mov    %edx,(%eax)
  1017fa:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101800:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101806:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  10180c:	8b 00                	mov    (%eax),%eax
  10180e:	83 f8 19             	cmp    $0x19,%eax
  101811:	75 1d                	jne    101830 <syscallWriteStdOut+0x161>
  101813:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  101819:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  10181f:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101825:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10182b:	e8 9a 27 00 00       	call   103fca <scrollScreen>
  101830:	ff 45 f4             	incl   -0xc(%ebp)
  101833:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101836:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  101839:	0f 8c e4 fe ff ff    	jl     101723 <syscallWriteStdOut+0x54>
  10183f:	c7 c0 10 72 10 00    	mov    $0x107210,%eax
  101845:	8b 10                	mov    (%eax),%edx
  101847:	c7 c0 0c 72 10 00    	mov    $0x10720c,%eax
  10184d:	8b 00                	mov    (%eax),%eax
  10184f:	83 ec 08             	sub    $0x8,%esp
  101852:	52                   	push   %edx
  101853:	50                   	push   %eax
  101854:	e8 fe 26 00 00       	call   103f57 <updateCursor>
  101859:	83 c4 10             	add    $0x10,%esp
  10185c:	90                   	nop
  10185d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101860:	c9                   	leave  
  101861:	c3                   	ret    

00101862 <syscallWriteShMem>:
  101862:	55                   	push   %ebp
  101863:	89 e5                	mov    %esp,%ebp
  101865:	53                   	push   %ebx
  101866:	83 ec 20             	sub    $0x20,%esp
  101869:	e8 a6 12 00 00       	call   102b14 <__x86.get_pc_thunk.dx>
  10186e:	81 c2 92 57 00 00    	add    $0x5792,%edx
  101874:	8b 45 08             	mov    0x8(%ebp),%eax
  101877:	8b 40 0c             	mov    0xc(%eax),%eax
  10187a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10187d:	8b 45 08             	mov    0x8(%ebp),%eax
  101880:	8b 40 24             	mov    0x24(%eax),%eax
  101883:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101886:	8b 45 08             	mov    0x8(%ebp),%eax
  101889:	8b 40 20             	mov    0x20(%eax),%eax
  10188c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10188f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101896:	8b 45 08             	mov    0x8(%ebp),%eax
  101899:	8b 40 14             	mov    0x14(%eax),%eax
  10189c:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10189f:	c6 45 eb 00          	movb   $0x0,-0x15(%ebp)
  1018a3:	8e 45 e4             	mov    -0x1c(%ebp),%es
  1018a6:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1018ad:	eb 26                	jmp    1018d5 <syscallWriteShMem+0x73>
  1018af:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1018b2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1018b5:	01 c8                	add    %ecx,%eax
  1018b7:	26 8a 00             	mov    %es:(%eax),%al
  1018ba:	88 45 eb             	mov    %al,-0x15(%ebp)
  1018bd:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  1018c0:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1018c3:	8d 1c 01             	lea    (%ecx,%eax,1),%ebx
  1018c6:	8a 4d eb             	mov    -0x15(%ebp),%cl
  1018c9:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  1018cf:	88 0c 18             	mov    %cl,(%eax,%ebx,1)
  1018d2:	ff 45 f8             	incl   -0x8(%ebp)
  1018d5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1018d8:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1018db:	7c d2                	jl     1018af <syscallWriteShMem+0x4d>
  1018dd:	90                   	nop
  1018de:	83 c4 20             	add    $0x20,%esp
  1018e1:	5b                   	pop    %ebx
  1018e2:	5d                   	pop    %ebp
  1018e3:	c3                   	ret    

001018e4 <syscallRead>:
  1018e4:	55                   	push   %ebp
  1018e5:	89 e5                	mov    %esp,%ebp
  1018e7:	83 ec 08             	sub    $0x8,%esp
  1018ea:	e8 56 eb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1018ef:	05 11 57 00 00       	add    $0x5711,%eax
  1018f4:	8b 55 08             	mov    0x8(%ebp),%edx
  1018f7:	8b 52 28             	mov    0x28(%edx),%edx
  1018fa:	83 fa 01             	cmp    $0x1,%edx
  1018fd:	74 07                	je     101906 <syscallRead+0x22>
  1018ff:	83 fa 03             	cmp    $0x3,%edx
  101902:	74 20                	je     101924 <syscallRead+0x40>
  101904:	eb 40                	jmp    101946 <syscallRead+0x62>
  101906:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  10190c:	8b 40 10             	mov    0x10(%eax),%eax
  10190f:	83 f8 01             	cmp    $0x1,%eax
  101912:	75 2e                	jne    101942 <syscallRead+0x5e>
  101914:	83 ec 0c             	sub    $0xc,%esp
  101917:	ff 75 08             	pushl  0x8(%ebp)
  10191a:	e8 2a 00 00 00       	call   101949 <syscallReadStdIn>
  10191f:	83 c4 10             	add    $0x10,%esp
  101922:	eb 1e                	jmp    101942 <syscallRead+0x5e>
  101924:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  10192a:	8b 40 30             	mov    0x30(%eax),%eax
  10192d:	83 f8 01             	cmp    $0x1,%eax
  101930:	75 13                	jne    101945 <syscallRead+0x61>
  101932:	83 ec 0c             	sub    $0xc,%esp
  101935:	ff 75 08             	pushl  0x8(%ebp)
  101938:	e8 f4 02 00 00       	call   101c31 <syscallReadShMem>
  10193d:	83 c4 10             	add    $0x10,%esp
  101940:	eb 03                	jmp    101945 <syscallRead+0x61>
  101942:	90                   	nop
  101943:	eb 01                	jmp    101946 <syscallRead+0x62>
  101945:	90                   	nop
  101946:	90                   	nop
  101947:	c9                   	leave  
  101948:	c3                   	ret    

00101949 <syscallReadStdIn>:
  101949:	55                   	push   %ebp
  10194a:	89 e5                	mov    %esp,%ebp
  10194c:	56                   	push   %esi
  10194d:	53                   	push   %ebx
  10194e:	83 ec 20             	sub    $0x20,%esp
  101951:	e8 ef ea ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101956:	05 aa 56 00 00       	add    $0x56aa,%eax
  10195b:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101961:	8b 52 14             	mov    0x14(%edx),%edx
  101964:	85 d2                	test   %edx,%edx
  101966:	0f 85 e9 01 00 00    	jne    101b55 <syscallReadStdIn+0x20c>
  10196c:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101972:	8b 52 10             	mov    0x10(%edx),%edx
  101975:	85 d2                	test   %edx,%edx
  101977:	75 0f                	jne    101988 <syscallReadStdIn+0x3f>
  101979:	8b 45 08             	mov    0x8(%ebp),%eax
  10197c:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  101983:	e9 a2 02 00 00       	jmp    101c2a <syscallReadStdIn+0x2e1>
  101988:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  10198e:	8b 0a                	mov    (%edx),%ecx
  101990:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101996:	89 ca                	mov    %ecx,%edx
  101998:	01 d2                	add    %edx,%edx
  10199a:	01 ca                	add    %ecx,%edx
  10199c:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1019a3:	01 ca                	add    %ecx,%edx
  1019a5:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1019ac:	01 ca                	add    %ecx,%edx
  1019ae:	89 d1                	mov    %edx,%ecx
  1019b0:	c1 e1 04             	shl    $0x4,%ecx
  1019b3:	01 ca                	add    %ecx,%edx
  1019b5:	c1 e2 02             	shl    $0x2,%edx
  1019b8:	01 da                	add    %ebx,%edx
  1019ba:	81 c2 54 40 00 00    	add    $0x4054,%edx
  1019c0:	c7 02 02 00 00 00    	movl   $0x2,(%edx)
  1019c6:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  1019cc:	8b 0a                	mov    (%edx),%ecx
  1019ce:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  1019d4:	89 ca                	mov    %ecx,%edx
  1019d6:	01 d2                	add    %edx,%edx
  1019d8:	01 ca                	add    %ecx,%edx
  1019da:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1019e1:	01 ca                	add    %ecx,%edx
  1019e3:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1019ea:	01 ca                	add    %ecx,%edx
  1019ec:	89 d1                	mov    %edx,%ecx
  1019ee:	c1 e1 04             	shl    $0x4,%ecx
  1019f1:	01 ca                	add    %ecx,%edx
  1019f3:	c1 e2 02             	shl    $0x2,%edx
  1019f6:	01 da                	add    %ebx,%edx
  1019f8:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  1019fe:	c7 02 ff ff ff ff    	movl   $0xffffffff,(%edx)
  101a04:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101a0a:	8b 1a                	mov    (%edx),%ebx
  101a0c:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101a12:	8b 4a 18             	mov    0x18(%edx),%ecx
  101a15:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101a1b:	89 da                	mov    %ebx,%edx
  101a1d:	01 d2                	add    %edx,%edx
  101a1f:	01 da                	add    %ebx,%edx
  101a21:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101a28:	01 da                	add    %ebx,%edx
  101a2a:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101a31:	01 da                	add    %ebx,%edx
  101a33:	89 d3                	mov    %edx,%ebx
  101a35:	c1 e3 04             	shl    $0x4,%ebx
  101a38:	01 da                	add    %ebx,%edx
  101a3a:	c1 e2 02             	shl    $0x2,%edx
  101a3d:	01 f2                	add    %esi,%edx
  101a3f:	81 c2 84 40 00 00    	add    $0x4084,%edx
  101a45:	89 0a                	mov    %ecx,(%edx)
  101a47:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101a4d:	8b 0a                	mov    (%edx),%ecx
  101a4f:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  101a55:	89 ca                	mov    %ecx,%edx
  101a57:	01 d2                	add    %edx,%edx
  101a59:	01 ca                	add    %ecx,%edx
  101a5b:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101a62:	01 ca                	add    %ecx,%edx
  101a64:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101a6b:	01 ca                	add    %ecx,%edx
  101a6d:	89 d1                	mov    %edx,%ecx
  101a6f:	c1 e1 04             	shl    $0x4,%ecx
  101a72:	01 ca                	add    %ecx,%edx
  101a74:	c1 e2 02             	shl    $0x2,%edx
  101a77:	01 da                	add    %ebx,%edx
  101a79:	8d 8a 88 40 00 00    	lea    0x4088(%edx),%ecx
  101a7f:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101a85:	8d 52 18             	lea    0x18(%edx),%edx
  101a88:	89 11                	mov    %edx,(%ecx)
  101a8a:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101a90:	8b 0a                	mov    (%edx),%ecx
  101a92:	89 ca                	mov    %ecx,%edx
  101a94:	01 d2                	add    %edx,%edx
  101a96:	01 ca                	add    %ecx,%edx
  101a98:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101a9f:	01 ca                	add    %ecx,%edx
  101aa1:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101aa8:	01 ca                	add    %ecx,%edx
  101aaa:	89 d1                	mov    %edx,%ecx
  101aac:	c1 e1 04             	shl    $0x4,%ecx
  101aaf:	01 ca                	add    %ecx,%edx
  101ab1:	c1 e2 02             	shl    $0x2,%edx
  101ab4:	8d 8a 80 40 00 00    	lea    0x4080(%edx),%ecx
  101aba:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  101ac0:	01 ca                	add    %ecx,%edx
  101ac2:	8d 4a 04             	lea    0x4(%edx),%ecx
  101ac5:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101acb:	89 4a 18             	mov    %ecx,0x18(%edx)
  101ace:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101ad4:	8b 1a                	mov    (%edx),%ebx
  101ad6:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  101adc:	8b 0a                	mov    (%edx),%ecx
  101ade:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101ae4:	89 ca                	mov    %ecx,%edx
  101ae6:	01 d2                	add    %edx,%edx
  101ae8:	01 ca                	add    %ecx,%edx
  101aea:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101af1:	01 ca                	add    %ecx,%edx
  101af3:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101afa:	01 ca                	add    %ecx,%edx
  101afc:	89 d1                	mov    %edx,%ecx
  101afe:	c1 e1 04             	shl    $0x4,%ecx
  101b01:	01 ca                	add    %ecx,%edx
  101b03:	c1 e2 02             	shl    $0x2,%edx
  101b06:	01 f2                	add    %esi,%edx
  101b08:	81 c2 84 40 00 00    	add    $0x4084,%edx
  101b0e:	8b 0a                	mov    (%edx),%ecx
  101b10:	89 da                	mov    %ebx,%edx
  101b12:	01 d2                	add    %edx,%edx
  101b14:	01 da                	add    %ebx,%edx
  101b16:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101b1d:	01 da                	add    %ebx,%edx
  101b1f:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101b26:	01 da                	add    %ebx,%edx
  101b28:	89 d3                	mov    %edx,%ebx
  101b2a:	c1 e3 04             	shl    $0x4,%ebx
  101b2d:	01 da                	add    %ebx,%edx
  101b2f:	c1 e2 02             	shl    $0x2,%edx
  101b32:	8d 9a 80 40 00 00    	lea    0x4080(%edx),%ebx
  101b38:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  101b3e:	01 da                	add    %ebx,%edx
  101b40:	83 c2 04             	add    $0x4,%edx
  101b43:	89 51 04             	mov    %edx,0x4(%ecx)
  101b46:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101b4c:	c7 42 10 00 00 00 00 	movl   $0x0,0x10(%edx)
  101b53:	cd 20                	int    $0x20
  101b55:	8b 55 08             	mov    0x8(%ebp),%edx
  101b58:	8b 52 0c             	mov    0xc(%edx),%edx
  101b5b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  101b5e:	8b 55 08             	mov    0x8(%ebp),%edx
  101b61:	8b 52 24             	mov    0x24(%edx),%edx
  101b64:	89 55 f0             	mov    %edx,-0x10(%ebp)
  101b67:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101b6e:	eb 48                	jmp    101bb8 <syscallReadStdIn+0x26f>
  101b70:	c7 c2 60 8a 10 00    	mov    $0x108a60,%edx
  101b76:	89 55 ec             	mov    %edx,-0x14(%ebp)
  101b79:	c7 c2 60 8e 10 00    	mov    $0x108e60,%edx
  101b7f:	8b 0a                	mov    (%edx),%ecx
  101b81:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101b84:	01 ca                	add    %ecx,%edx
  101b86:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  101b8c:	85 d2                	test   %edx,%edx
  101b8e:	79 08                	jns    101b98 <syscallReadStdIn+0x24f>
  101b90:	4a                   	dec    %edx
  101b91:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  101b97:	42                   	inc    %edx
  101b98:	89 d1                	mov    %edx,%ecx
  101b9a:	8b 55 ec             	mov    -0x14(%ebp),%edx
  101b9d:	01 ca                	add    %ecx,%edx
  101b9f:	8a 12                	mov    (%edx),%dl
  101ba1:	88 55 eb             	mov    %dl,-0x15(%ebp)
  101ba4:	8e 45 e4             	mov    -0x1c(%ebp),%es
  101ba7:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101baa:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101bad:	01 d1                	add    %edx,%ecx
  101baf:	8a 55 eb             	mov    -0x15(%ebp),%dl
  101bb2:	26 88 11             	mov    %dl,%es:(%ecx)
  101bb5:	ff 45 f4             	incl   -0xc(%ebp)
  101bb8:	8b 55 08             	mov    0x8(%ebp),%edx
  101bbb:	8b 4a 20             	mov    0x20(%edx),%ecx
  101bbe:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101bc1:	39 d1                	cmp    %edx,%ecx
  101bc3:	76 31                	jbe    101bf6 <syscallReadStdIn+0x2ad>
  101bc5:	c7 c2 60 8e 10 00    	mov    $0x108e60,%edx
  101bcb:	8b 0a                	mov    (%edx),%ecx
  101bcd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101bd0:	01 ca                	add    %ecx,%edx
  101bd2:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  101bd8:	85 d2                	test   %edx,%edx
  101bda:	79 08                	jns    101be4 <syscallReadStdIn+0x29b>
  101bdc:	4a                   	dec    %edx
  101bdd:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  101be3:	42                   	inc    %edx
  101be4:	89 d1                	mov    %edx,%ecx
  101be6:	c7 c2 40 8a 10 00    	mov    $0x108a40,%edx
  101bec:	8b 12                	mov    (%edx),%edx
  101bee:	39 d1                	cmp    %edx,%ecx
  101bf0:	0f 85 7a ff ff ff    	jne    101b70 <syscallReadStdIn+0x227>
  101bf6:	c7 c2 60 8e 10 00    	mov    $0x108e60,%edx
  101bfc:	8b 0a                	mov    (%edx),%ecx
  101bfe:	c7 c2 40 8a 10 00    	mov    $0x108a40,%edx
  101c04:	89 0a                	mov    %ecx,(%edx)
  101c06:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  101c0c:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%edx)
  101c13:	c7 c0 80 8e 10 00    	mov    $0x108e80,%eax
  101c19:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  101c20:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101c23:	8b 45 08             	mov    0x8(%ebp),%eax
  101c26:	89 50 2c             	mov    %edx,0x2c(%eax)
  101c29:	90                   	nop
  101c2a:	83 c4 20             	add    $0x20,%esp
  101c2d:	5b                   	pop    %ebx
  101c2e:	5e                   	pop    %esi
  101c2f:	5d                   	pop    %ebp
  101c30:	c3                   	ret    

00101c31 <syscallReadShMem>:
  101c31:	55                   	push   %ebp
  101c32:	89 e5                	mov    %esp,%ebp
  101c34:	53                   	push   %ebx
  101c35:	83 ec 20             	sub    $0x20,%esp
  101c38:	e8 d7 0e 00 00       	call   102b14 <__x86.get_pc_thunk.dx>
  101c3d:	81 c2 c3 53 00 00    	add    $0x53c3,%edx
  101c43:	8b 45 08             	mov    0x8(%ebp),%eax
  101c46:	8b 40 0c             	mov    0xc(%eax),%eax
  101c49:	89 45 e8             	mov    %eax,-0x18(%ebp)
  101c4c:	8b 45 08             	mov    0x8(%ebp),%eax
  101c4f:	8b 40 24             	mov    0x24(%eax),%eax
  101c52:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101c55:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101c5c:	8b 45 08             	mov    0x8(%ebp),%eax
  101c5f:	8b 40 20             	mov    0x20(%eax),%eax
  101c62:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101c65:	8b 45 08             	mov    0x8(%ebp),%eax
  101c68:	8b 40 14             	mov    0x14(%eax),%eax
  101c6b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101c6e:	eb 22                	jmp    101c92 <syscallReadShMem+0x61>
  101c70:	8e 45 e8             	mov    -0x18(%ebp),%es
  101c73:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  101c76:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101c79:	01 c1                	add    %eax,%ecx
  101c7b:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  101c81:	8a 04 08             	mov    (%eax,%ecx,1),%al
  101c84:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  101c87:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101c8a:	01 d9                	add    %ebx,%ecx
  101c8c:	26 88 01             	mov    %al,%es:(%ecx)
  101c8f:	ff 45 f8             	incl   -0x8(%ebp)
  101c92:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101c95:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  101c98:	7c d6                	jl     101c70 <syscallReadShMem+0x3f>
  101c9a:	90                   	nop
  101c9b:	83 c4 20             	add    $0x20,%esp
  101c9e:	5b                   	pop    %ebx
  101c9f:	5d                   	pop    %ebp
  101ca0:	c3                   	ret    

00101ca1 <syscallFork>:
  101ca1:	55                   	push   %ebp
  101ca2:	89 e5                	mov    %esp,%ebp
  101ca4:	56                   	push   %esi
  101ca5:	53                   	push   %ebx
  101ca6:	83 ec 10             	sub    $0x10,%esp
  101ca9:	e8 87 eb ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101cae:	81 c3 52 53 00 00    	add    $0x5352,%ebx
  101cb4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101cbb:	eb 3c                	jmp    101cf9 <syscallFork+0x58>
  101cbd:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101cc3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101cc6:	89 d0                	mov    %edx,%eax
  101cc8:	01 c0                	add    %eax,%eax
  101cca:	01 d0                	add    %edx,%eax
  101ccc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101cd3:	01 d0                	add    %edx,%eax
  101cd5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101cdc:	01 d0                	add    %edx,%eax
  101cde:	89 c2                	mov    %eax,%edx
  101ce0:	c1 e2 04             	shl    $0x4,%edx
  101ce3:	01 d0                	add    %edx,%eax
  101ce5:	c1 e0 02             	shl    $0x2,%eax
  101ce8:	01 c8                	add    %ecx,%eax
  101cea:	05 54 40 00 00       	add    $0x4054,%eax
  101cef:	8b 00                	mov    (%eax),%eax
  101cf1:	83 f8 03             	cmp    $0x3,%eax
  101cf4:	74 0b                	je     101d01 <syscallFork+0x60>
  101cf6:	ff 45 f4             	incl   -0xc(%ebp)
  101cf9:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  101cfd:	7e be                	jle    101cbd <syscallFork+0x1c>
  101cff:	eb 01                	jmp    101d02 <syscallFork+0x61>
  101d01:	90                   	nop
  101d02:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  101d06:	0f 84 c5 0a 00 00    	je     1027d1 <syscallFork+0xb30>
  101d0c:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101d12:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101d15:	89 d0                	mov    %edx,%eax
  101d17:	01 c0                	add    %eax,%eax
  101d19:	01 d0                	add    %edx,%eax
  101d1b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d22:	01 d0                	add    %edx,%eax
  101d24:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d2b:	01 d0                	add    %edx,%eax
  101d2d:	89 c2                	mov    %eax,%edx
  101d2f:	c1 e2 04             	shl    $0x4,%edx
  101d32:	01 d0                	add    %edx,%eax
  101d34:	c1 e0 02             	shl    $0x2,%eax
  101d37:	01 c8                	add    %ecx,%eax
  101d39:	05 54 40 00 00       	add    $0x4054,%eax
  101d3e:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  101d44:	e8 98 ee ff ff       	call   100be1 <enableInterrupt>
  101d49:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  101d50:	eb 28                	jmp    101d7a <syscallFork+0xd9>
  101d52:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101d58:	8b 00                	mov    (%eax),%eax
  101d5a:	40                   	inc    %eax
  101d5b:	c1 e0 14             	shl    $0x14,%eax
  101d5e:	89 c2                	mov    %eax,%edx
  101d60:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101d63:	01 d0                	add    %edx,%eax
  101d65:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101d68:	42                   	inc    %edx
  101d69:	89 d1                	mov    %edx,%ecx
  101d6b:	c1 e1 14             	shl    $0x14,%ecx
  101d6e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101d71:	01 ca                	add    %ecx,%edx
  101d73:	8a 00                	mov    (%eax),%al
  101d75:	88 02                	mov    %al,(%edx)
  101d77:	ff 45 f0             	incl   -0x10(%ebp)
  101d7a:	81 7d f0 ff ff 0f 00 	cmpl   $0xfffff,-0x10(%ebp)
  101d81:	7e cf                	jle    101d52 <syscallFork+0xb1>
  101d83:	e8 6a ee ff ff       	call   100bf2 <disableInterrupt>
  101d88:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101d8b:	89 d0                	mov    %edx,%eax
  101d8d:	01 c0                	add    %eax,%eax
  101d8f:	01 d0                	add    %edx,%eax
  101d91:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d98:	01 d0                	add    %edx,%eax
  101d9a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101da1:	01 d0                	add    %edx,%eax
  101da3:	89 c2                	mov    %eax,%edx
  101da5:	c1 e2 04             	shl    $0x4,%edx
  101da8:	01 d0                	add    %edx,%eax
  101daa:	c1 e0 02             	shl    $0x2,%eax
  101dad:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101db3:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  101db9:	01 d0                	add    %edx,%eax
  101dbb:	83 c0 0c             	add    $0xc,%eax
  101dbe:	89 c6                	mov    %eax,%esi
  101dc0:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101dc6:	8b 10                	mov    (%eax),%edx
  101dc8:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101dce:	89 d0                	mov    %edx,%eax
  101dd0:	01 c0                	add    %eax,%eax
  101dd2:	01 d0                	add    %edx,%eax
  101dd4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ddb:	01 d0                	add    %edx,%eax
  101ddd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101de4:	01 d0                	add    %edx,%eax
  101de6:	89 c2                	mov    %eax,%edx
  101de8:	c1 e2 04             	shl    $0x4,%edx
  101deb:	01 d0                	add    %edx,%eax
  101ded:	c1 e0 02             	shl    $0x2,%eax
  101df0:	01 c8                	add    %ecx,%eax
  101df2:	05 4c 40 00 00       	add    $0x404c,%eax
  101df7:	8b 08                	mov    (%eax),%ecx
  101df9:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101dff:	8b 10                	mov    (%eax),%edx
  101e01:	89 d0                	mov    %edx,%eax
  101e03:	01 c0                	add    %eax,%eax
  101e05:	01 d0                	add    %edx,%eax
  101e07:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e0e:	01 d0                	add    %edx,%eax
  101e10:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e17:	01 d0                	add    %edx,%eax
  101e19:	89 c2                	mov    %eax,%edx
  101e1b:	c1 e2 04             	shl    $0x4,%edx
  101e1e:	01 d0                	add    %edx,%eax
  101e20:	c1 e0 02             	shl    $0x2,%eax
  101e23:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101e29:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  101e2f:	01 d0                	add    %edx,%eax
  101e31:	83 c0 0c             	add    $0xc,%eax
  101e34:	29 c1                	sub    %eax,%ecx
  101e36:	89 c8                	mov    %ecx,%eax
  101e38:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101e3b:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101e41:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e44:	89 d0                	mov    %edx,%eax
  101e46:	01 c0                	add    %eax,%eax
  101e48:	01 d0                	add    %edx,%eax
  101e4a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e51:	01 d0                	add    %edx,%eax
  101e53:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e5a:	01 d0                	add    %edx,%eax
  101e5c:	89 c2                	mov    %eax,%edx
  101e5e:	c1 e2 04             	shl    $0x4,%edx
  101e61:	01 d0                	add    %edx,%eax
  101e63:	c1 e0 02             	shl    $0x2,%eax
  101e66:	01 f0                	add    %esi,%eax
  101e68:	05 4c 40 00 00       	add    $0x404c,%eax
  101e6d:	89 08                	mov    %ecx,(%eax)
  101e6f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e72:	89 d0                	mov    %edx,%eax
  101e74:	01 c0                	add    %eax,%eax
  101e76:	01 d0                	add    %edx,%eax
  101e78:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e7f:	01 d0                	add    %edx,%eax
  101e81:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e88:	01 d0                	add    %edx,%eax
  101e8a:	89 c2                	mov    %eax,%edx
  101e8c:	c1 e2 04             	shl    $0x4,%edx
  101e8f:	01 d0                	add    %edx,%eax
  101e91:	c1 e0 02             	shl    $0x2,%eax
  101e94:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101e9a:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  101ea0:	01 d0                	add    %edx,%eax
  101ea2:	83 c0 0c             	add    $0xc,%eax
  101ea5:	89 c6                	mov    %eax,%esi
  101ea7:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101ead:	8b 10                	mov    (%eax),%edx
  101eaf:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101eb5:	89 d0                	mov    %edx,%eax
  101eb7:	01 c0                	add    %eax,%eax
  101eb9:	01 d0                	add    %edx,%eax
  101ebb:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ec2:	01 d0                	add    %edx,%eax
  101ec4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ecb:	01 d0                	add    %edx,%eax
  101ecd:	89 c2                	mov    %eax,%edx
  101ecf:	c1 e2 04             	shl    $0x4,%edx
  101ed2:	01 d0                	add    %edx,%eax
  101ed4:	c1 e0 02             	shl    $0x2,%eax
  101ed7:	01 c8                	add    %ecx,%eax
  101ed9:	05 50 40 00 00       	add    $0x4050,%eax
  101ede:	8b 08                	mov    (%eax),%ecx
  101ee0:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101ee6:	8b 10                	mov    (%eax),%edx
  101ee8:	89 d0                	mov    %edx,%eax
  101eea:	01 c0                	add    %eax,%eax
  101eec:	01 d0                	add    %edx,%eax
  101eee:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ef5:	01 d0                	add    %edx,%eax
  101ef7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101efe:	01 d0                	add    %edx,%eax
  101f00:	89 c2                	mov    %eax,%edx
  101f02:	c1 e2 04             	shl    $0x4,%edx
  101f05:	01 d0                	add    %edx,%eax
  101f07:	c1 e0 02             	shl    $0x2,%eax
  101f0a:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101f10:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  101f16:	01 d0                	add    %edx,%eax
  101f18:	83 c0 0c             	add    $0xc,%eax
  101f1b:	29 c1                	sub    %eax,%ecx
  101f1d:	89 c8                	mov    %ecx,%eax
  101f1f:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101f22:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101f28:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101f2b:	89 d0                	mov    %edx,%eax
  101f2d:	01 c0                	add    %eax,%eax
  101f2f:	01 d0                	add    %edx,%eax
  101f31:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f38:	01 d0                	add    %edx,%eax
  101f3a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f41:	01 d0                	add    %edx,%eax
  101f43:	89 c2                	mov    %eax,%edx
  101f45:	c1 e2 04             	shl    $0x4,%edx
  101f48:	01 d0                	add    %edx,%eax
  101f4a:	c1 e0 02             	shl    $0x2,%eax
  101f4d:	01 f0                	add    %esi,%eax
  101f4f:	05 50 40 00 00       	add    $0x4050,%eax
  101f54:	89 08                	mov    %ecx,(%eax)
  101f56:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101f5c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101f5f:	89 d0                	mov    %edx,%eax
  101f61:	01 c0                	add    %eax,%eax
  101f63:	01 d0                	add    %edx,%eax
  101f65:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f6c:	01 d0                	add    %edx,%eax
  101f6e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f75:	01 d0                	add    %edx,%eax
  101f77:	89 c2                	mov    %eax,%edx
  101f79:	c1 e2 04             	shl    $0x4,%edx
  101f7c:	01 d0                	add    %edx,%eax
  101f7e:	c1 e0 02             	shl    $0x2,%eax
  101f81:	01 c8                	add    %ecx,%eax
  101f83:	05 54 40 00 00       	add    $0x4054,%eax
  101f88:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101f8e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  101f94:	8b 10                	mov    (%eax),%edx
  101f96:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  101f9c:	89 d0                	mov    %edx,%eax
  101f9e:	01 c0                	add    %eax,%eax
  101fa0:	01 d0                	add    %edx,%eax
  101fa2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fa9:	01 d0                	add    %edx,%eax
  101fab:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fb2:	01 d0                	add    %edx,%eax
  101fb4:	89 c2                	mov    %eax,%edx
  101fb6:	c1 e2 04             	shl    $0x4,%edx
  101fb9:	01 d0                	add    %edx,%eax
  101fbb:	c1 e0 02             	shl    $0x2,%eax
  101fbe:	01 c8                	add    %ecx,%eax
  101fc0:	05 58 40 00 00       	add    $0x4058,%eax
  101fc5:	8b 10                	mov    (%eax),%edx
  101fc7:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  101fcd:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101fd0:	89 c8                	mov    %ecx,%eax
  101fd2:	01 c0                	add    %eax,%eax
  101fd4:	01 c8                	add    %ecx,%eax
  101fd6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101fdd:	01 c8                	add    %ecx,%eax
  101fdf:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101fe6:	01 c8                	add    %ecx,%eax
  101fe8:	89 c1                	mov    %eax,%ecx
  101fea:	c1 e1 04             	shl    $0x4,%ecx
  101fed:	01 c8                	add    %ecx,%eax
  101fef:	c1 e0 02             	shl    $0x2,%eax
  101ff2:	01 f0                	add    %esi,%eax
  101ff4:	05 58 40 00 00       	add    $0x4058,%eax
  101ff9:	89 10                	mov    %edx,(%eax)
  101ffb:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102001:	8b 10                	mov    (%eax),%edx
  102003:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102009:	89 d0                	mov    %edx,%eax
  10200b:	01 c0                	add    %eax,%eax
  10200d:	01 d0                	add    %edx,%eax
  10200f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102016:	01 d0                	add    %edx,%eax
  102018:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10201f:	01 d0                	add    %edx,%eax
  102021:	89 c2                	mov    %eax,%edx
  102023:	c1 e2 04             	shl    $0x4,%edx
  102026:	01 d0                	add    %edx,%eax
  102028:	c1 e0 02             	shl    $0x2,%eax
  10202b:	01 c8                	add    %ecx,%eax
  10202d:	05 5c 40 00 00       	add    $0x405c,%eax
  102032:	8b 10                	mov    (%eax),%edx
  102034:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10203a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10203d:	89 c8                	mov    %ecx,%eax
  10203f:	01 c0                	add    %eax,%eax
  102041:	01 c8                	add    %ecx,%eax
  102043:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10204a:	01 c8                	add    %ecx,%eax
  10204c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102053:	01 c8                	add    %ecx,%eax
  102055:	89 c1                	mov    %eax,%ecx
  102057:	c1 e1 04             	shl    $0x4,%ecx
  10205a:	01 c8                	add    %ecx,%eax
  10205c:	c1 e0 02             	shl    $0x2,%eax
  10205f:	01 f0                	add    %esi,%eax
  102061:	05 5c 40 00 00       	add    $0x405c,%eax
  102066:	89 10                	mov    %edx,(%eax)
  102068:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10206b:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102071:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102074:	89 c8                	mov    %ecx,%eax
  102076:	01 c0                	add    %eax,%eax
  102078:	01 c8                	add    %ecx,%eax
  10207a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102081:	01 c8                	add    %ecx,%eax
  102083:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10208a:	01 c8                	add    %ecx,%eax
  10208c:	89 c1                	mov    %eax,%ecx
  10208e:	c1 e1 04             	shl    $0x4,%ecx
  102091:	01 c8                	add    %ecx,%eax
  102093:	c1 e0 02             	shl    $0x2,%eax
  102096:	01 f0                	add    %esi,%eax
  102098:	05 60 40 00 00       	add    $0x4060,%eax
  10209d:	89 10                	mov    %edx,(%eax)
  10209f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1020a2:	40                   	inc    %eax
  1020a3:	01 c0                	add    %eax,%eax
  1020a5:	c1 e0 03             	shl    $0x3,%eax
  1020a8:	83 c8 03             	or     $0x3,%eax
  1020ab:	89 c1                	mov    %eax,%ecx
  1020ad:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1020b3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1020b6:	89 d0                	mov    %edx,%eax
  1020b8:	01 c0                	add    %eax,%eax
  1020ba:	01 d0                	add    %edx,%eax
  1020bc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1020c3:	01 d0                	add    %edx,%eax
  1020c5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1020cc:	01 d0                	add    %edx,%eax
  1020ce:	89 c2                	mov    %eax,%edx
  1020d0:	c1 e2 04             	shl    $0x4,%edx
  1020d3:	01 d0                	add    %edx,%eax
  1020d5:	c1 e0 02             	shl    $0x2,%eax
  1020d8:	01 f0                	add    %esi,%eax
  1020da:	05 48 40 00 00       	add    $0x4048,%eax
  1020df:	89 08                	mov    %ecx,(%eax)
  1020e1:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1020e7:	8b 10                	mov    (%eax),%edx
  1020e9:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1020ef:	89 d0                	mov    %edx,%eax
  1020f1:	01 c0                	add    %eax,%eax
  1020f3:	01 d0                	add    %edx,%eax
  1020f5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1020fc:	01 d0                	add    %edx,%eax
  1020fe:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102105:	01 d0                	add    %edx,%eax
  102107:	89 c2                	mov    %eax,%edx
  102109:	c1 e2 04             	shl    $0x4,%edx
  10210c:	01 d0                	add    %edx,%eax
  10210e:	c1 e0 02             	shl    $0x2,%eax
  102111:	01 c8                	add    %ecx,%eax
  102113:	05 44 40 00 00       	add    $0x4044,%eax
  102118:	8b 10                	mov    (%eax),%edx
  10211a:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102120:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102123:	89 c8                	mov    %ecx,%eax
  102125:	01 c0                	add    %eax,%eax
  102127:	01 c8                	add    %ecx,%eax
  102129:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102130:	01 c8                	add    %ecx,%eax
  102132:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102139:	01 c8                	add    %ecx,%eax
  10213b:	89 c1                	mov    %eax,%ecx
  10213d:	c1 e1 04             	shl    $0x4,%ecx
  102140:	01 c8                	add    %ecx,%eax
  102142:	c1 e0 02             	shl    $0x2,%eax
  102145:	01 f0                	add    %esi,%eax
  102147:	05 44 40 00 00       	add    $0x4044,%eax
  10214c:	89 10                	mov    %edx,(%eax)
  10214e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102154:	8b 10                	mov    (%eax),%edx
  102156:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  10215c:	89 d0                	mov    %edx,%eax
  10215e:	01 c0                	add    %eax,%eax
  102160:	01 d0                	add    %edx,%eax
  102162:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102169:	01 d0                	add    %edx,%eax
  10216b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102172:	01 d0                	add    %edx,%eax
  102174:	89 c2                	mov    %eax,%edx
  102176:	c1 e2 04             	shl    $0x4,%edx
  102179:	01 d0                	add    %edx,%eax
  10217b:	c1 e0 02             	shl    $0x2,%eax
  10217e:	01 c8                	add    %ecx,%eax
  102180:	05 40 40 00 00       	add    $0x4040,%eax
  102185:	8b 10                	mov    (%eax),%edx
  102187:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10218d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102190:	89 c8                	mov    %ecx,%eax
  102192:	01 c0                	add    %eax,%eax
  102194:	01 c8                	add    %ecx,%eax
  102196:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10219d:	01 c8                	add    %ecx,%eax
  10219f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021a6:	01 c8                	add    %ecx,%eax
  1021a8:	89 c1                	mov    %eax,%ecx
  1021aa:	c1 e1 04             	shl    $0x4,%ecx
  1021ad:	01 c8                	add    %ecx,%eax
  1021af:	c1 e0 02             	shl    $0x2,%eax
  1021b2:	01 f0                	add    %esi,%eax
  1021b4:	05 40 40 00 00       	add    $0x4040,%eax
  1021b9:	89 10                	mov    %edx,(%eax)
  1021bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1021be:	01 c0                	add    %eax,%eax
  1021c0:	40                   	inc    %eax
  1021c1:	c1 e0 03             	shl    $0x3,%eax
  1021c4:	83 c8 03             	or     $0x3,%eax
  1021c7:	89 c1                	mov    %eax,%ecx
  1021c9:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1021cf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1021d2:	89 d0                	mov    %edx,%eax
  1021d4:	01 c0                	add    %eax,%eax
  1021d6:	01 d0                	add    %edx,%eax
  1021d8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021df:	01 d0                	add    %edx,%eax
  1021e1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021e8:	01 d0                	add    %edx,%eax
  1021ea:	89 c2                	mov    %eax,%edx
  1021ec:	c1 e2 04             	shl    $0x4,%edx
  1021ef:	01 d0                	add    %edx,%eax
  1021f1:	c1 e0 02             	shl    $0x2,%eax
  1021f4:	01 f0                	add    %esi,%eax
  1021f6:	05 3c 40 00 00       	add    $0x403c,%eax
  1021fb:	89 08                	mov    %ecx,(%eax)
  1021fd:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102203:	8b 10                	mov    (%eax),%edx
  102205:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  10220b:	89 d0                	mov    %edx,%eax
  10220d:	01 c0                	add    %eax,%eax
  10220f:	01 d0                	add    %edx,%eax
  102211:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102218:	01 d0                	add    %edx,%eax
  10221a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102221:	01 d0                	add    %edx,%eax
  102223:	89 c2                	mov    %eax,%edx
  102225:	c1 e2 04             	shl    $0x4,%edx
  102228:	01 d0                	add    %edx,%eax
  10222a:	c1 e0 02             	shl    $0x2,%eax
  10222d:	01 c8                	add    %ecx,%eax
  10222f:	05 38 40 00 00       	add    $0x4038,%eax
  102234:	8b 10                	mov    (%eax),%edx
  102236:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10223c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10223f:	89 c8                	mov    %ecx,%eax
  102241:	01 c0                	add    %eax,%eax
  102243:	01 c8                	add    %ecx,%eax
  102245:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10224c:	01 c8                	add    %ecx,%eax
  10224e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102255:	01 c8                	add    %ecx,%eax
  102257:	89 c1                	mov    %eax,%ecx
  102259:	c1 e1 04             	shl    $0x4,%ecx
  10225c:	01 c8                	add    %ecx,%eax
  10225e:	c1 e0 02             	shl    $0x2,%eax
  102261:	01 f0                	add    %esi,%eax
  102263:	05 38 40 00 00       	add    $0x4038,%eax
  102268:	89 10                	mov    %edx,(%eax)
  10226a:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102270:	8b 10                	mov    (%eax),%edx
  102272:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102278:	89 d0                	mov    %edx,%eax
  10227a:	01 c0                	add    %eax,%eax
  10227c:	01 d0                	add    %edx,%eax
  10227e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102285:	01 d0                	add    %edx,%eax
  102287:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10228e:	01 d0                	add    %edx,%eax
  102290:	89 c2                	mov    %eax,%edx
  102292:	c1 e2 04             	shl    $0x4,%edx
  102295:	01 d0                	add    %edx,%eax
  102297:	c1 e0 02             	shl    $0x2,%eax
  10229a:	01 c8                	add    %ecx,%eax
  10229c:	05 2c 40 00 00       	add    $0x402c,%eax
  1022a1:	8b 10                	mov    (%eax),%edx
  1022a3:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1022a9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1022ac:	89 c8                	mov    %ecx,%eax
  1022ae:	01 c0                	add    %eax,%eax
  1022b0:	01 c8                	add    %ecx,%eax
  1022b2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1022b9:	01 c8                	add    %ecx,%eax
  1022bb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1022c2:	01 c8                	add    %ecx,%eax
  1022c4:	89 c1                	mov    %eax,%ecx
  1022c6:	c1 e1 04             	shl    $0x4,%ecx
  1022c9:	01 c8                	add    %ecx,%eax
  1022cb:	c1 e0 02             	shl    $0x2,%eax
  1022ce:	01 f0                	add    %esi,%eax
  1022d0:	05 2c 40 00 00       	add    $0x402c,%eax
  1022d5:	89 10                	mov    %edx,(%eax)
  1022d7:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1022dd:	8b 10                	mov    (%eax),%edx
  1022df:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1022e5:	89 d0                	mov    %edx,%eax
  1022e7:	01 c0                	add    %eax,%eax
  1022e9:	01 d0                	add    %edx,%eax
  1022eb:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1022f2:	01 d0                	add    %edx,%eax
  1022f4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1022fb:	01 d0                	add    %edx,%eax
  1022fd:	89 c2                	mov    %eax,%edx
  1022ff:	c1 e2 04             	shl    $0x4,%edx
  102302:	01 d0                	add    %edx,%eax
  102304:	c1 e0 02             	shl    $0x2,%eax
  102307:	01 c8                	add    %ecx,%eax
  102309:	05 28 40 00 00       	add    $0x4028,%eax
  10230e:	8b 10                	mov    (%eax),%edx
  102310:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102316:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102319:	89 c8                	mov    %ecx,%eax
  10231b:	01 c0                	add    %eax,%eax
  10231d:	01 c8                	add    %ecx,%eax
  10231f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102326:	01 c8                	add    %ecx,%eax
  102328:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10232f:	01 c8                	add    %ecx,%eax
  102331:	89 c1                	mov    %eax,%ecx
  102333:	c1 e1 04             	shl    $0x4,%ecx
  102336:	01 c8                	add    %ecx,%eax
  102338:	c1 e0 02             	shl    $0x2,%eax
  10233b:	01 f0                	add    %esi,%eax
  10233d:	05 28 40 00 00       	add    $0x4028,%eax
  102342:	89 10                	mov    %edx,(%eax)
  102344:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10234a:	8b 10                	mov    (%eax),%edx
  10234c:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102352:	89 d0                	mov    %edx,%eax
  102354:	01 c0                	add    %eax,%eax
  102356:	01 d0                	add    %edx,%eax
  102358:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10235f:	01 d0                	add    %edx,%eax
  102361:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102368:	01 d0                	add    %edx,%eax
  10236a:	89 c2                	mov    %eax,%edx
  10236c:	c1 e2 04             	shl    $0x4,%edx
  10236f:	01 d0                	add    %edx,%eax
  102371:	c1 e0 02             	shl    $0x2,%eax
  102374:	01 c8                	add    %ecx,%eax
  102376:	05 24 40 00 00       	add    $0x4024,%eax
  10237b:	8b 10                	mov    (%eax),%edx
  10237d:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102383:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102386:	89 c8                	mov    %ecx,%eax
  102388:	01 c0                	add    %eax,%eax
  10238a:	01 c8                	add    %ecx,%eax
  10238c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102393:	01 c8                	add    %ecx,%eax
  102395:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10239c:	01 c8                	add    %ecx,%eax
  10239e:	89 c1                	mov    %eax,%ecx
  1023a0:	c1 e1 04             	shl    $0x4,%ecx
  1023a3:	01 c8                	add    %ecx,%eax
  1023a5:	c1 e0 02             	shl    $0x2,%eax
  1023a8:	01 f0                	add    %esi,%eax
  1023aa:	05 24 40 00 00       	add    $0x4024,%eax
  1023af:	89 10                	mov    %edx,(%eax)
  1023b1:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1023b7:	8b 10                	mov    (%eax),%edx
  1023b9:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1023bf:	89 d0                	mov    %edx,%eax
  1023c1:	01 c0                	add    %eax,%eax
  1023c3:	01 d0                	add    %edx,%eax
  1023c5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023cc:	01 d0                	add    %edx,%eax
  1023ce:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023d5:	01 d0                	add    %edx,%eax
  1023d7:	89 c2                	mov    %eax,%edx
  1023d9:	c1 e2 04             	shl    $0x4,%edx
  1023dc:	01 d0                	add    %edx,%eax
  1023de:	c1 e0 02             	shl    $0x2,%eax
  1023e1:	01 c8                	add    %ecx,%eax
  1023e3:	05 20 40 00 00       	add    $0x4020,%eax
  1023e8:	8b 10                	mov    (%eax),%edx
  1023ea:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1023f0:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1023f3:	89 c8                	mov    %ecx,%eax
  1023f5:	01 c0                	add    %eax,%eax
  1023f7:	01 c8                	add    %ecx,%eax
  1023f9:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102400:	01 c8                	add    %ecx,%eax
  102402:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102409:	01 c8                	add    %ecx,%eax
  10240b:	89 c1                	mov    %eax,%ecx
  10240d:	c1 e1 04             	shl    $0x4,%ecx
  102410:	01 c8                	add    %ecx,%eax
  102412:	c1 e0 02             	shl    $0x2,%eax
  102415:	01 f0                	add    %esi,%eax
  102417:	05 20 40 00 00       	add    $0x4020,%eax
  10241c:	89 10                	mov    %edx,(%eax)
  10241e:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102424:	8b 10                	mov    (%eax),%edx
  102426:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  10242c:	89 d0                	mov    %edx,%eax
  10242e:	01 c0                	add    %eax,%eax
  102430:	01 d0                	add    %edx,%eax
  102432:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102439:	01 d0                	add    %edx,%eax
  10243b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102442:	01 d0                	add    %edx,%eax
  102444:	89 c2                	mov    %eax,%edx
  102446:	c1 e2 04             	shl    $0x4,%edx
  102449:	01 d0                	add    %edx,%eax
  10244b:	c1 e0 02             	shl    $0x2,%eax
  10244e:	01 c8                	add    %ecx,%eax
  102450:	05 1c 40 00 00       	add    $0x401c,%eax
  102455:	8b 10                	mov    (%eax),%edx
  102457:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10245d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102460:	89 c8                	mov    %ecx,%eax
  102462:	01 c0                	add    %eax,%eax
  102464:	01 c8                	add    %ecx,%eax
  102466:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10246d:	01 c8                	add    %ecx,%eax
  10246f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102476:	01 c8                	add    %ecx,%eax
  102478:	89 c1                	mov    %eax,%ecx
  10247a:	c1 e1 04             	shl    $0x4,%ecx
  10247d:	01 c8                	add    %ecx,%eax
  10247f:	c1 e0 02             	shl    $0x2,%eax
  102482:	01 f0                	add    %esi,%eax
  102484:	05 1c 40 00 00       	add    $0x401c,%eax
  102489:	89 10                	mov    %edx,(%eax)
  10248b:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102491:	8b 10                	mov    (%eax),%edx
  102493:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102499:	89 d0                	mov    %edx,%eax
  10249b:	01 c0                	add    %eax,%eax
  10249d:	01 d0                	add    %edx,%eax
  10249f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024a6:	01 d0                	add    %edx,%eax
  1024a8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024af:	01 d0                	add    %edx,%eax
  1024b1:	89 c2                	mov    %eax,%edx
  1024b3:	c1 e2 04             	shl    $0x4,%edx
  1024b6:	01 d0                	add    %edx,%eax
  1024b8:	c1 e0 02             	shl    $0x2,%eax
  1024bb:	01 c8                	add    %ecx,%eax
  1024bd:	05 18 40 00 00       	add    $0x4018,%eax
  1024c2:	8b 10                	mov    (%eax),%edx
  1024c4:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1024ca:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1024cd:	89 c8                	mov    %ecx,%eax
  1024cf:	01 c0                	add    %eax,%eax
  1024d1:	01 c8                	add    %ecx,%eax
  1024d3:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024da:	01 c8                	add    %ecx,%eax
  1024dc:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024e3:	01 c8                	add    %ecx,%eax
  1024e5:	89 c1                	mov    %eax,%ecx
  1024e7:	c1 e1 04             	shl    $0x4,%ecx
  1024ea:	01 c8                	add    %ecx,%eax
  1024ec:	c1 e0 02             	shl    $0x2,%eax
  1024ef:	01 f0                	add    %esi,%eax
  1024f1:	05 18 40 00 00       	add    $0x4018,%eax
  1024f6:	89 10                	mov    %edx,(%eax)
  1024f8:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1024fe:	8b 10                	mov    (%eax),%edx
  102500:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102506:	89 d0                	mov    %edx,%eax
  102508:	01 c0                	add    %eax,%eax
  10250a:	01 d0                	add    %edx,%eax
  10250c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102513:	01 d0                	add    %edx,%eax
  102515:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10251c:	01 d0                	add    %edx,%eax
  10251e:	89 c2                	mov    %eax,%edx
  102520:	c1 e2 04             	shl    $0x4,%edx
  102523:	01 d0                	add    %edx,%eax
  102525:	c1 e0 02             	shl    $0x2,%eax
  102528:	01 c8                	add    %ecx,%eax
  10252a:	05 14 40 00 00       	add    $0x4014,%eax
  10252f:	8b 10                	mov    (%eax),%edx
  102531:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102537:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10253a:	89 c8                	mov    %ecx,%eax
  10253c:	01 c0                	add    %eax,%eax
  10253e:	01 c8                	add    %ecx,%eax
  102540:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102547:	01 c8                	add    %ecx,%eax
  102549:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102550:	01 c8                	add    %ecx,%eax
  102552:	89 c1                	mov    %eax,%ecx
  102554:	c1 e1 04             	shl    $0x4,%ecx
  102557:	01 c8                	add    %ecx,%eax
  102559:	c1 e0 02             	shl    $0x2,%eax
  10255c:	01 f0                	add    %esi,%eax
  10255e:	05 14 40 00 00       	add    $0x4014,%eax
  102563:	89 10                	mov    %edx,(%eax)
  102565:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10256b:	8b 10                	mov    (%eax),%edx
  10256d:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102573:	89 d0                	mov    %edx,%eax
  102575:	01 c0                	add    %eax,%eax
  102577:	01 d0                	add    %edx,%eax
  102579:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102580:	01 d0                	add    %edx,%eax
  102582:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102589:	01 d0                	add    %edx,%eax
  10258b:	89 c2                	mov    %eax,%edx
  10258d:	c1 e2 04             	shl    $0x4,%edx
  102590:	01 d0                	add    %edx,%eax
  102592:	c1 e0 02             	shl    $0x2,%eax
  102595:	01 c8                	add    %ecx,%eax
  102597:	05 10 40 00 00       	add    $0x4010,%eax
  10259c:	8b 10                	mov    (%eax),%edx
  10259e:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1025a4:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1025a7:	89 c8                	mov    %ecx,%eax
  1025a9:	01 c0                	add    %eax,%eax
  1025ab:	01 c8                	add    %ecx,%eax
  1025ad:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1025b4:	01 c8                	add    %ecx,%eax
  1025b6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1025bd:	01 c8                	add    %ecx,%eax
  1025bf:	89 c1                	mov    %eax,%ecx
  1025c1:	c1 e1 04             	shl    $0x4,%ecx
  1025c4:	01 c8                	add    %ecx,%eax
  1025c6:	c1 e0 02             	shl    $0x2,%eax
  1025c9:	01 f0                	add    %esi,%eax
  1025cb:	05 10 40 00 00       	add    $0x4010,%eax
  1025d0:	89 10                	mov    %edx,(%eax)
  1025d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1025d5:	40                   	inc    %eax
  1025d6:	01 c0                	add    %eax,%eax
  1025d8:	c1 e0 03             	shl    $0x3,%eax
  1025db:	83 c8 03             	or     $0x3,%eax
  1025de:	89 c1                	mov    %eax,%ecx
  1025e0:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1025e6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1025e9:	89 d0                	mov    %edx,%eax
  1025eb:	01 c0                	add    %eax,%eax
  1025ed:	01 d0                	add    %edx,%eax
  1025ef:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1025f6:	01 d0                	add    %edx,%eax
  1025f8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1025ff:	01 d0                	add    %edx,%eax
  102601:	89 c2                	mov    %eax,%edx
  102603:	c1 e2 04             	shl    $0x4,%edx
  102606:	01 d0                	add    %edx,%eax
  102608:	c1 e0 02             	shl    $0x2,%eax
  10260b:	01 f0                	add    %esi,%eax
  10260d:	05 0c 40 00 00       	add    $0x400c,%eax
  102612:	89 08                	mov    %ecx,(%eax)
  102614:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  10261a:	8b 10                	mov    (%eax),%edx
  10261c:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102622:	89 d0                	mov    %edx,%eax
  102624:	01 c0                	add    %eax,%eax
  102626:	01 d0                	add    %edx,%eax
  102628:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10262f:	01 d0                	add    %edx,%eax
  102631:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102638:	01 d0                	add    %edx,%eax
  10263a:	89 c2                	mov    %eax,%edx
  10263c:	c1 e2 04             	shl    $0x4,%edx
  10263f:	01 d0                	add    %edx,%eax
  102641:	c1 e0 02             	shl    $0x2,%eax
  102644:	01 c8                	add    %ecx,%eax
  102646:	05 08 40 00 00       	add    $0x4008,%eax
  10264b:	8b 10                	mov    (%eax),%edx
  10264d:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102653:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102656:	89 c8                	mov    %ecx,%eax
  102658:	01 c0                	add    %eax,%eax
  10265a:	01 c8                	add    %ecx,%eax
  10265c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102663:	01 c8                	add    %ecx,%eax
  102665:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10266c:	01 c8                	add    %ecx,%eax
  10266e:	89 c1                	mov    %eax,%ecx
  102670:	c1 e1 04             	shl    $0x4,%ecx
  102673:	01 c8                	add    %ecx,%eax
  102675:	c1 e0 02             	shl    $0x2,%eax
  102678:	01 f0                	add    %esi,%eax
  10267a:	05 08 40 00 00       	add    $0x4008,%eax
  10267f:	89 10                	mov    %edx,(%eax)
  102681:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102687:	8b 10                	mov    (%eax),%edx
  102689:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  10268f:	89 d0                	mov    %edx,%eax
  102691:	01 c0                	add    %eax,%eax
  102693:	01 d0                	add    %edx,%eax
  102695:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10269c:	01 d0                	add    %edx,%eax
  10269e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1026a5:	01 d0                	add    %edx,%eax
  1026a7:	89 c2                	mov    %eax,%edx
  1026a9:	c1 e2 04             	shl    $0x4,%edx
  1026ac:	01 d0                	add    %edx,%eax
  1026ae:	c1 e0 02             	shl    $0x2,%eax
  1026b1:	01 c8                	add    %ecx,%eax
  1026b3:	05 04 40 00 00       	add    $0x4004,%eax
  1026b8:	8b 10                	mov    (%eax),%edx
  1026ba:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  1026c0:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1026c3:	89 c8                	mov    %ecx,%eax
  1026c5:	01 c0                	add    %eax,%eax
  1026c7:	01 c8                	add    %ecx,%eax
  1026c9:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1026d0:	01 c8                	add    %ecx,%eax
  1026d2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1026d9:	01 c8                	add    %ecx,%eax
  1026db:	89 c1                	mov    %eax,%ecx
  1026dd:	c1 e1 04             	shl    $0x4,%ecx
  1026e0:	01 c8                	add    %ecx,%eax
  1026e2:	c1 e0 02             	shl    $0x2,%eax
  1026e5:	01 f0                	add    %esi,%eax
  1026e7:	05 04 40 00 00       	add    $0x4004,%eax
  1026ec:	89 10                	mov    %edx,(%eax)
  1026ee:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1026f4:	8b 10                	mov    (%eax),%edx
  1026f6:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1026fc:	89 d0                	mov    %edx,%eax
  1026fe:	01 c0                	add    %eax,%eax
  102700:	01 d0                	add    %edx,%eax
  102702:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102709:	01 d0                	add    %edx,%eax
  10270b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102712:	01 d0                	add    %edx,%eax
  102714:	89 c2                	mov    %eax,%edx
  102716:	c1 e2 04             	shl    $0x4,%edx
  102719:	01 d0                	add    %edx,%eax
  10271b:	c1 e0 02             	shl    $0x2,%eax
  10271e:	01 c8                	add    %ecx,%eax
  102720:	05 00 40 00 00       	add    $0x4000,%eax
  102725:	8b 10                	mov    (%eax),%edx
  102727:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  10272d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102730:	89 c8                	mov    %ecx,%eax
  102732:	01 c0                	add    %eax,%eax
  102734:	01 c8                	add    %ecx,%eax
  102736:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10273d:	01 c8                	add    %ecx,%eax
  10273f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102746:	01 c8                	add    %ecx,%eax
  102748:	89 c1                	mov    %eax,%ecx
  10274a:	c1 e1 04             	shl    $0x4,%ecx
  10274d:	01 c8                	add    %ecx,%eax
  10274f:	c1 e0 02             	shl    $0x2,%eax
  102752:	01 f0                	add    %esi,%eax
  102754:	05 00 40 00 00       	add    $0x4000,%eax
  102759:	89 10                	mov    %edx,(%eax)
  10275b:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102761:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102764:	89 d0                	mov    %edx,%eax
  102766:	01 c0                	add    %eax,%eax
  102768:	01 d0                	add    %edx,%eax
  10276a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102771:	01 d0                	add    %edx,%eax
  102773:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10277a:	01 d0                	add    %edx,%eax
  10277c:	89 c2                	mov    %eax,%edx
  10277e:	c1 e2 04             	shl    $0x4,%edx
  102781:	01 d0                	add    %edx,%eax
  102783:	c1 e0 02             	shl    $0x2,%eax
  102786:	01 c8                	add    %ecx,%eax
  102788:	05 2c 40 00 00       	add    $0x402c,%eax
  10278d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102793:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102799:	8b 08                	mov    (%eax),%ecx
  10279b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10279e:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  1027a4:	89 c8                	mov    %ecx,%eax
  1027a6:	01 c0                	add    %eax,%eax
  1027a8:	01 c8                	add    %ecx,%eax
  1027aa:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1027b1:	01 c8                	add    %ecx,%eax
  1027b3:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1027ba:	01 c8                	add    %ecx,%eax
  1027bc:	89 c1                	mov    %eax,%ecx
  1027be:	c1 e1 04             	shl    $0x4,%ecx
  1027c1:	01 c8                	add    %ecx,%eax
  1027c3:	c1 e0 02             	shl    $0x2,%eax
  1027c6:	01 d8                	add    %ebx,%eax
  1027c8:	05 2c 40 00 00       	add    $0x402c,%eax
  1027cd:	89 10                	mov    %edx,(%eax)
  1027cf:	eb 3e                	jmp    10280f <syscallFork+0xb6e>
  1027d1:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1027d7:	8b 10                	mov    (%eax),%edx
  1027d9:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1027df:	89 d0                	mov    %edx,%eax
  1027e1:	01 c0                	add    %eax,%eax
  1027e3:	01 d0                	add    %edx,%eax
  1027e5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1027ec:	01 d0                	add    %edx,%eax
  1027ee:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1027f5:	01 d0                	add    %edx,%eax
  1027f7:	89 c2                	mov    %eax,%edx
  1027f9:	c1 e2 04             	shl    $0x4,%edx
  1027fc:	01 d0                	add    %edx,%eax
  1027fe:	c1 e0 02             	shl    $0x2,%eax
  102801:	01 c8                	add    %ecx,%eax
  102803:	05 2c 40 00 00       	add    $0x402c,%eax
  102808:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  10280e:	90                   	nop
  10280f:	83 c4 10             	add    $0x10,%esp
  102812:	5b                   	pop    %ebx
  102813:	5e                   	pop    %esi
  102814:	5d                   	pop    %ebp
  102815:	c3                   	ret    

00102816 <syscallExec>:
  102816:	55                   	push   %ebp
  102817:	89 e5                	mov    %esp,%ebp
  102819:	53                   	push   %ebx
  10281a:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  102820:	e8 ef 02 00 00       	call   102b14 <__x86.get_pc_thunk.dx>
  102825:	81 c2 db 47 00 00    	add    $0x47db,%edx
  10282b:	8b 45 08             	mov    0x8(%ebp),%eax
  10282e:	8b 40 0c             	mov    0xc(%eax),%eax
  102831:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102834:	8b 45 08             	mov    0x8(%ebp),%eax
  102837:	8b 40 28             	mov    0x28(%eax),%eax
  10283a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10283d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102844:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  102848:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  10284f:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  102856:	00 00 00 
  102859:	8e 45 e4             	mov    -0x1c(%ebp),%es
  10285c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10285f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102862:	01 c8                	add    %ecx,%eax
  102864:	26 8a 00             	mov    %es:(%eax),%al
  102867:	88 45 f3             	mov    %al,-0xd(%ebp)
  10286a:	eb 21                	jmp    10288d <syscallExec+0x77>
  10286c:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  102872:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102875:	01 c1                	add    %eax,%ecx
  102877:	8a 45 f3             	mov    -0xd(%ebp),%al
  10287a:	88 01                	mov    %al,(%ecx)
  10287c:	ff 45 f4             	incl   -0xc(%ebp)
  10287f:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102882:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102885:	01 c8                	add    %ecx,%eax
  102887:	26 8a 00             	mov    %es:(%eax),%al
  10288a:	88 45 f3             	mov    %al,-0xd(%ebp)
  10288d:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  102891:	75 d9                	jne    10286c <syscallExec+0x56>
  102893:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  102899:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10289c:	01 c8                	add    %ecx,%eax
  10289e:	c6 00 00             	movb   $0x0,(%eax)
  1028a1:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  1028a7:	8b 00                	mov    (%eax),%eax
  1028a9:	40                   	inc    %eax
  1028aa:	c1 e0 14             	shl    $0x14,%eax
  1028ad:	89 c1                	mov    %eax,%ecx
  1028af:	83 ec 04             	sub    $0x4,%esp
  1028b2:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  1028b8:	50                   	push   %eax
  1028b9:	51                   	push   %ecx
  1028ba:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  1028c0:	50                   	push   %eax
  1028c1:	89 d3                	mov    %edx,%ebx
  1028c3:	e8 04 0e 00 00       	call   1036cc <loadElf>
  1028c8:	83 c4 10             	add    $0x10,%esp
  1028cb:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1028ce:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
  1028d2:	75 0c                	jne    1028e0 <syscallExec+0xca>
  1028d4:	8b 45 08             	mov    0x8(%ebp),%eax
  1028d7:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  1028de:	eb 0d                	jmp    1028ed <syscallExec+0xd7>
  1028e0:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
  1028e6:	8b 45 08             	mov    0x8(%ebp),%eax
  1028e9:	89 50 38             	mov    %edx,0x38(%eax)
  1028ec:	90                   	nop
  1028ed:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1028f0:	c9                   	leave  
  1028f1:	c3                   	ret    

001028f2 <syscallSleep>:
  1028f2:	55                   	push   %ebp
  1028f3:	89 e5                	mov    %esp,%ebp
  1028f5:	53                   	push   %ebx
  1028f6:	e8 19 02 00 00       	call   102b14 <__x86.get_pc_thunk.dx>
  1028fb:	81 c2 05 47 00 00    	add    $0x4705,%edx
  102901:	8b 45 08             	mov    0x8(%ebp),%eax
  102904:	8b 40 28             	mov    0x28(%eax),%eax
  102907:	85 c0                	test   %eax,%eax
  102909:	0f 84 81 00 00 00    	je     102990 <syscallSleep+0x9e>
  10290f:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102915:	8b 08                	mov    (%eax),%ecx
  102917:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  10291d:	89 c8                	mov    %ecx,%eax
  10291f:	01 c0                	add    %eax,%eax
  102921:	01 c8                	add    %ecx,%eax
  102923:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10292a:	01 c8                	add    %ecx,%eax
  10292c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102933:	01 c8                	add    %ecx,%eax
  102935:	89 c1                	mov    %eax,%ecx
  102937:	c1 e1 04             	shl    $0x4,%ecx
  10293a:	01 c8                	add    %ecx,%eax
  10293c:	c1 e0 02             	shl    $0x2,%eax
  10293f:	01 d8                	add    %ebx,%eax
  102941:	05 54 40 00 00       	add    $0x4054,%eax
  102946:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  10294c:	8b 45 08             	mov    0x8(%ebp),%eax
  10294f:	8b 58 28             	mov    0x28(%eax),%ebx
  102952:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  102958:	8b 08                	mov    (%eax),%ecx
  10295a:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  102960:	89 c8                	mov    %ecx,%eax
  102962:	01 c0                	add    %eax,%eax
  102964:	01 c8                	add    %ecx,%eax
  102966:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10296d:	01 c8                	add    %ecx,%eax
  10296f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102976:	01 c8                	add    %ecx,%eax
  102978:	89 c1                	mov    %eax,%ecx
  10297a:	c1 e1 04             	shl    $0x4,%ecx
  10297d:	01 c8                	add    %ecx,%eax
  10297f:	c1 e0 02             	shl    $0x2,%eax
  102982:	01 d0                	add    %edx,%eax
  102984:	05 5c 40 00 00       	add    $0x405c,%eax
  102989:	89 18                	mov    %ebx,(%eax)
  10298b:	cd 20                	int    $0x20
  10298d:	90                   	nop
  10298e:	eb 01                	jmp    102991 <syscallSleep+0x9f>
  102990:	90                   	nop
  102991:	5b                   	pop    %ebx
  102992:	5d                   	pop    %ebp
  102993:	c3                   	ret    

00102994 <syscallExit>:
  102994:	55                   	push   %ebp
  102995:	89 e5                	mov    %esp,%ebp
  102997:	e8 a9 da ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10299c:	05 64 46 00 00       	add    $0x4664,%eax
  1029a1:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  1029a7:	8b 12                	mov    (%edx),%edx
  1029a9:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  1029af:	89 d0                	mov    %edx,%eax
  1029b1:	01 c0                	add    %eax,%eax
  1029b3:	01 d0                	add    %edx,%eax
  1029b5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1029bc:	01 d0                	add    %edx,%eax
  1029be:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1029c5:	01 d0                	add    %edx,%eax
  1029c7:	89 c2                	mov    %eax,%edx
  1029c9:	c1 e2 04             	shl    $0x4,%edx
  1029cc:	01 d0                	add    %edx,%eax
  1029ce:	c1 e0 02             	shl    $0x2,%eax
  1029d1:	01 c8                	add    %ecx,%eax
  1029d3:	05 54 40 00 00       	add    $0x4054,%eax
  1029d8:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  1029de:	cd 20                	int    $0x20
  1029e0:	90                   	nop
  1029e1:	5d                   	pop    %ebp
  1029e2:	c3                   	ret    

001029e3 <syscallSem>:
  1029e3:	55                   	push   %ebp
  1029e4:	89 e5                	mov    %esp,%ebp
  1029e6:	83 ec 08             	sub    $0x8,%esp
  1029e9:	e8 57 da ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1029ee:	05 12 46 00 00       	add    $0x4612,%eax
  1029f3:	8b 45 08             	mov    0x8(%ebp),%eax
  1029f6:	8b 40 28             	mov    0x28(%eax),%eax
  1029f9:	83 f8 01             	cmp    $0x1,%eax
  1029fc:	74 21                	je     102a1f <syscallSem+0x3c>
  1029fe:	83 f8 01             	cmp    $0x1,%eax
  102a01:	72 0c                	jb     102a0f <syscallSem+0x2c>
  102a03:	83 f8 02             	cmp    $0x2,%eax
  102a06:	74 27                	je     102a2f <syscallSem+0x4c>
  102a08:	83 f8 03             	cmp    $0x3,%eax
  102a0b:	74 32                	je     102a3f <syscallSem+0x5c>
  102a0d:	eb 3f                	jmp    102a4e <syscallSem+0x6b>
  102a0f:	83 ec 0c             	sub    $0xc,%esp
  102a12:	ff 75 08             	pushl  0x8(%ebp)
  102a15:	e8 37 00 00 00       	call   102a51 <syscallSemInit>
  102a1a:	83 c4 10             	add    $0x10,%esp
  102a1d:	eb 2f                	jmp    102a4e <syscallSem+0x6b>
  102a1f:	83 ec 0c             	sub    $0xc,%esp
  102a22:	ff 75 08             	pushl  0x8(%ebp)
  102a25:	e8 37 00 00 00       	call   102a61 <syscallSemWait>
  102a2a:	83 c4 10             	add    $0x10,%esp
  102a2d:	eb 1f                	jmp    102a4e <syscallSem+0x6b>
  102a2f:	83 ec 0c             	sub    $0xc,%esp
  102a32:	ff 75 08             	pushl  0x8(%ebp)
  102a35:	e8 37 00 00 00       	call   102a71 <syscallSemPost>
  102a3a:	83 c4 10             	add    $0x10,%esp
  102a3d:	eb 0f                	jmp    102a4e <syscallSem+0x6b>
  102a3f:	83 ec 0c             	sub    $0xc,%esp
  102a42:	ff 75 08             	pushl  0x8(%ebp)
  102a45:	e8 37 00 00 00       	call   102a81 <syscallSemDestroy>
  102a4a:	83 c4 10             	add    $0x10,%esp
  102a4d:	90                   	nop
  102a4e:	90                   	nop
  102a4f:	c9                   	leave  
  102a50:	c3                   	ret    

00102a51 <syscallSemInit>:
  102a51:	55                   	push   %ebp
  102a52:	89 e5                	mov    %esp,%ebp
  102a54:	e8 ec d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102a59:	05 a7 45 00 00       	add    $0x45a7,%eax
  102a5e:	90                   	nop
  102a5f:	5d                   	pop    %ebp
  102a60:	c3                   	ret    

00102a61 <syscallSemWait>:
  102a61:	55                   	push   %ebp
  102a62:	89 e5                	mov    %esp,%ebp
  102a64:	e8 dc d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102a69:	05 97 45 00 00       	add    $0x4597,%eax
  102a6e:	90                   	nop
  102a6f:	5d                   	pop    %ebp
  102a70:	c3                   	ret    

00102a71 <syscallSemPost>:
  102a71:	55                   	push   %ebp
  102a72:	89 e5                	mov    %esp,%ebp
  102a74:	e8 cc d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102a79:	05 87 45 00 00       	add    $0x4587,%eax
  102a7e:	90                   	nop
  102a7f:	5d                   	pop    %ebp
  102a80:	c3                   	ret    

00102a81 <syscallSemDestroy>:
  102a81:	55                   	push   %ebp
  102a82:	89 e5                	mov    %esp,%ebp
  102a84:	e8 bc d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102a89:	05 77 45 00 00       	add    $0x4577,%eax
  102a8e:	90                   	nop
  102a8f:	5d                   	pop    %ebp
  102a90:	c3                   	ret    

00102a91 <syscallGetPid>:
  102a91:	55                   	push   %ebp
  102a92:	89 e5                	mov    %esp,%ebp
  102a94:	53                   	push   %ebx
  102a95:	e8 ab d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102a9a:	05 66 45 00 00       	add    $0x4566,%eax
  102a9f:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102aa5:	8b 0a                	mov    (%edx),%ecx
  102aa7:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102aad:	8b 12                	mov    (%edx),%edx
  102aaf:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  102ab5:	89 d0                	mov    %edx,%eax
  102ab7:	01 c0                	add    %eax,%eax
  102ab9:	01 d0                	add    %edx,%eax
  102abb:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102ac2:	01 d0                	add    %edx,%eax
  102ac4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102acb:	01 d0                	add    %edx,%eax
  102acd:	89 c2                	mov    %eax,%edx
  102acf:	c1 e2 04             	shl    $0x4,%edx
  102ad2:	01 d0                	add    %edx,%eax
  102ad4:	c1 e0 02             	shl    $0x2,%eax
  102ad7:	01 d8                	add    %ebx,%eax
  102ad9:	05 2c 40 00 00       	add    $0x402c,%eax
  102ade:	89 08                	mov    %ecx,(%eax)
  102ae0:	90                   	nop
  102ae1:	5b                   	pop    %ebx
  102ae2:	5d                   	pop    %ebp
  102ae3:	c3                   	ret    

00102ae4 <GProtectFaultHandle>:
  102ae4:	55                   	push   %ebp
  102ae5:	89 e5                	mov    %esp,%ebp
  102ae7:	53                   	push   %ebx
  102ae8:	83 ec 04             	sub    $0x4,%esp
  102aeb:	e8 55 d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102af0:	05 10 45 00 00       	add    $0x4510,%eax
  102af5:	83 ec 08             	sub    $0x8,%esp
  102af8:	68 67 02 00 00       	push   $0x267
  102afd:	8d 90 24 d5 ff ff    	lea    -0x2adc(%eax),%edx
  102b03:	52                   	push   %edx
  102b04:	89 c3                	mov    %eax,%ebx
  102b06:	e8 ea 16 00 00       	call   1041f5 <abort>
  102b0b:	83 c4 10             	add    $0x10,%esp
  102b0e:	90                   	nop
  102b0f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102b12:	c9                   	leave  
  102b13:	c3                   	ret    

00102b14 <__x86.get_pc_thunk.dx>:
  102b14:	8b 14 24             	mov    (%esp),%edx
  102b17:	c3                   	ret    

00102b18 <__x86.get_pc_thunk.cx>:
  102b18:	8b 0c 24             	mov    (%esp),%ecx
  102b1b:	c3                   	ret    

00102b1c <inByte>:
  102b1c:	55                   	push   %ebp
  102b1d:	89 e5                	mov    %esp,%ebp
  102b1f:	83 ec 14             	sub    $0x14,%esp
  102b22:	e8 1e d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b27:	05 d9 44 00 00       	add    $0x44d9,%eax
  102b2c:	8b 45 08             	mov    0x8(%ebp),%eax
  102b2f:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  102b33:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102b36:	89 c2                	mov    %eax,%edx
  102b38:	ec                   	in     (%dx),%al
  102b39:	88 45 ff             	mov    %al,-0x1(%ebp)
  102b3c:	8a 45 ff             	mov    -0x1(%ebp),%al
  102b3f:	c9                   	leave  
  102b40:	c3                   	ret    

00102b41 <outByte>:
  102b41:	55                   	push   %ebp
  102b42:	89 e5                	mov    %esp,%ebp
  102b44:	83 ec 08             	sub    $0x8,%esp
  102b47:	e8 f9 d8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b4c:	05 b4 44 00 00       	add    $0x44b4,%eax
  102b51:	8b 45 08             	mov    0x8(%ebp),%eax
  102b54:	8b 55 0c             	mov    0xc(%ebp),%edx
  102b57:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  102b5b:	88 d0                	mov    %dl,%al
  102b5d:	88 45 f8             	mov    %al,-0x8(%ebp)
  102b60:	8a 45 f8             	mov    -0x8(%ebp),%al
  102b63:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102b66:	ee                   	out    %al,(%dx)
  102b67:	90                   	nop
  102b68:	c9                   	leave  
  102b69:	c3                   	ret    

00102b6a <initKeyTable>:
  102b6a:	55                   	push   %ebp
  102b6b:	89 e5                	mov    %esp,%ebp
  102b6d:	83 ec 10             	sub    $0x10,%esp
  102b70:	e8 d0 d8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b75:	05 8b 44 00 00       	add    $0x448b,%eax
  102b7a:	c7 c2 60 8e 10 00    	mov    $0x108e60,%edx
  102b80:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102b86:	c7 c2 40 8a 10 00    	mov    $0x108a40,%edx
  102b8c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102b92:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  102b99:	00 00 00 
  102b9c:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102ba2:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102ba8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102baf:	eb 1f                	jmp    102bd0 <initKeyTable+0x66>
  102bb1:	8d 88 40 01 00 00    	lea    0x140(%eax),%ecx
  102bb7:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102bba:	01 ca                	add    %ecx,%edx
  102bbc:	c6 02 00             	movb   $0x0,(%edx)
  102bbf:	8d 88 a0 01 00 00    	lea    0x1a0(%eax),%ecx
  102bc5:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102bc8:	01 ca                	add    %ecx,%edx
  102bca:	c6 02 00             	movb   $0x0,(%edx)
  102bcd:	ff 45 fc             	incl   -0x4(%ebp)
  102bd0:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  102bd4:	7e db                	jle    102bb1 <initKeyTable+0x47>
  102bd6:	c6 80 42 01 00 00 31 	movb   $0x31,0x142(%eax)
  102bdd:	c6 80 a2 01 00 00 21 	movb   $0x21,0x1a2(%eax)
  102be4:	c6 80 43 01 00 00 32 	movb   $0x32,0x143(%eax)
  102beb:	c6 80 a3 01 00 00 40 	movb   $0x40,0x1a3(%eax)
  102bf2:	c6 80 44 01 00 00 33 	movb   $0x33,0x144(%eax)
  102bf9:	c6 80 a4 01 00 00 23 	movb   $0x23,0x1a4(%eax)
  102c00:	c6 80 45 01 00 00 34 	movb   $0x34,0x145(%eax)
  102c07:	c6 80 a5 01 00 00 24 	movb   $0x24,0x1a5(%eax)
  102c0e:	c6 80 46 01 00 00 35 	movb   $0x35,0x146(%eax)
  102c15:	c6 80 a6 01 00 00 25 	movb   $0x25,0x1a6(%eax)
  102c1c:	c6 80 47 01 00 00 36 	movb   $0x36,0x147(%eax)
  102c23:	c6 80 a7 01 00 00 5e 	movb   $0x5e,0x1a7(%eax)
  102c2a:	c6 80 48 01 00 00 37 	movb   $0x37,0x148(%eax)
  102c31:	c6 80 a8 01 00 00 26 	movb   $0x26,0x1a8(%eax)
  102c38:	c6 80 49 01 00 00 38 	movb   $0x38,0x149(%eax)
  102c3f:	c6 80 a9 01 00 00 2a 	movb   $0x2a,0x1a9(%eax)
  102c46:	c6 80 4a 01 00 00 39 	movb   $0x39,0x14a(%eax)
  102c4d:	c6 80 aa 01 00 00 28 	movb   $0x28,0x1aa(%eax)
  102c54:	c6 80 4b 01 00 00 30 	movb   $0x30,0x14b(%eax)
  102c5b:	c6 80 ab 01 00 00 29 	movb   $0x29,0x1ab(%eax)
  102c62:	c6 80 5e 01 00 00 61 	movb   $0x61,0x15e(%eax)
  102c69:	c6 80 be 01 00 00 41 	movb   $0x41,0x1be(%eax)
  102c70:	c6 80 70 01 00 00 62 	movb   $0x62,0x170(%eax)
  102c77:	c6 80 d0 01 00 00 42 	movb   $0x42,0x1d0(%eax)
  102c7e:	c6 80 6e 01 00 00 63 	movb   $0x63,0x16e(%eax)
  102c85:	c6 80 ce 01 00 00 43 	movb   $0x43,0x1ce(%eax)
  102c8c:	c6 80 60 01 00 00 64 	movb   $0x64,0x160(%eax)
  102c93:	c6 80 c0 01 00 00 44 	movb   $0x44,0x1c0(%eax)
  102c9a:	c6 80 52 01 00 00 65 	movb   $0x65,0x152(%eax)
  102ca1:	c6 80 b2 01 00 00 45 	movb   $0x45,0x1b2(%eax)
  102ca8:	c6 80 61 01 00 00 66 	movb   $0x66,0x161(%eax)
  102caf:	c6 80 c1 01 00 00 46 	movb   $0x46,0x1c1(%eax)
  102cb6:	c6 80 62 01 00 00 67 	movb   $0x67,0x162(%eax)
  102cbd:	c6 80 c2 01 00 00 47 	movb   $0x47,0x1c2(%eax)
  102cc4:	c6 80 63 01 00 00 68 	movb   $0x68,0x163(%eax)
  102ccb:	c6 80 c3 01 00 00 48 	movb   $0x48,0x1c3(%eax)
  102cd2:	c6 80 57 01 00 00 69 	movb   $0x69,0x157(%eax)
  102cd9:	c6 80 b7 01 00 00 49 	movb   $0x49,0x1b7(%eax)
  102ce0:	c6 80 64 01 00 00 6a 	movb   $0x6a,0x164(%eax)
  102ce7:	c6 80 c4 01 00 00 4a 	movb   $0x4a,0x1c4(%eax)
  102cee:	c6 80 65 01 00 00 6b 	movb   $0x6b,0x165(%eax)
  102cf5:	c6 80 c5 01 00 00 4b 	movb   $0x4b,0x1c5(%eax)
  102cfc:	c6 80 66 01 00 00 6c 	movb   $0x6c,0x166(%eax)
  102d03:	c6 80 c6 01 00 00 4c 	movb   $0x4c,0x1c6(%eax)
  102d0a:	c6 80 72 01 00 00 6d 	movb   $0x6d,0x172(%eax)
  102d11:	c6 80 d2 01 00 00 4d 	movb   $0x4d,0x1d2(%eax)
  102d18:	c6 80 71 01 00 00 6e 	movb   $0x6e,0x171(%eax)
  102d1f:	c6 80 d1 01 00 00 4e 	movb   $0x4e,0x1d1(%eax)
  102d26:	c6 80 58 01 00 00 6f 	movb   $0x6f,0x158(%eax)
  102d2d:	c6 80 b8 01 00 00 4f 	movb   $0x4f,0x1b8(%eax)
  102d34:	c6 80 59 01 00 00 70 	movb   $0x70,0x159(%eax)
  102d3b:	c6 80 b9 01 00 00 50 	movb   $0x50,0x1b9(%eax)
  102d42:	c6 80 50 01 00 00 71 	movb   $0x71,0x150(%eax)
  102d49:	c6 80 b0 01 00 00 51 	movb   $0x51,0x1b0(%eax)
  102d50:	c6 80 53 01 00 00 72 	movb   $0x72,0x153(%eax)
  102d57:	c6 80 b3 01 00 00 52 	movb   $0x52,0x1b3(%eax)
  102d5e:	c6 80 5f 01 00 00 73 	movb   $0x73,0x15f(%eax)
  102d65:	c6 80 bf 01 00 00 53 	movb   $0x53,0x1bf(%eax)
  102d6c:	c6 80 54 01 00 00 74 	movb   $0x74,0x154(%eax)
  102d73:	c6 80 b4 01 00 00 54 	movb   $0x54,0x1b4(%eax)
  102d7a:	c6 80 56 01 00 00 75 	movb   $0x75,0x156(%eax)
  102d81:	c6 80 b6 01 00 00 55 	movb   $0x55,0x1b6(%eax)
  102d88:	c6 80 6f 01 00 00 76 	movb   $0x76,0x16f(%eax)
  102d8f:	c6 80 cf 01 00 00 56 	movb   $0x56,0x1cf(%eax)
  102d96:	c6 80 51 01 00 00 77 	movb   $0x77,0x151(%eax)
  102d9d:	c6 80 b1 01 00 00 57 	movb   $0x57,0x1b1(%eax)
  102da4:	c6 80 6d 01 00 00 78 	movb   $0x78,0x16d(%eax)
  102dab:	c6 80 cd 01 00 00 58 	movb   $0x58,0x1cd(%eax)
  102db2:	c6 80 55 01 00 00 79 	movb   $0x79,0x155(%eax)
  102db9:	c6 80 b5 01 00 00 59 	movb   $0x59,0x1b5(%eax)
  102dc0:	c6 80 6c 01 00 00 7a 	movb   $0x7a,0x16c(%eax)
  102dc7:	c6 80 cc 01 00 00 5a 	movb   $0x5a,0x1cc(%eax)
  102dce:	c6 80 4c 01 00 00 2d 	movb   $0x2d,0x14c(%eax)
  102dd5:	c6 80 ac 01 00 00 5f 	movb   $0x5f,0x1ac(%eax)
  102ddc:	c6 80 4d 01 00 00 3d 	movb   $0x3d,0x14d(%eax)
  102de3:	c6 80 ad 01 00 00 2b 	movb   $0x2b,0x1ad(%eax)
  102dea:	c6 80 5a 01 00 00 5b 	movb   $0x5b,0x15a(%eax)
  102df1:	c6 80 ba 01 00 00 7b 	movb   $0x7b,0x1ba(%eax)
  102df8:	c6 80 5b 01 00 00 5d 	movb   $0x5d,0x15b(%eax)
  102dff:	c6 80 bb 01 00 00 7d 	movb   $0x7d,0x1bb(%eax)
  102e06:	c6 80 5c 01 00 00 0a 	movb   $0xa,0x15c(%eax)
  102e0d:	c6 80 bc 01 00 00 0a 	movb   $0xa,0x1bc(%eax)
  102e14:	c6 80 67 01 00 00 3b 	movb   $0x3b,0x167(%eax)
  102e1b:	c6 80 c7 01 00 00 3a 	movb   $0x3a,0x1c7(%eax)
  102e22:	c6 80 68 01 00 00 27 	movb   $0x27,0x168(%eax)
  102e29:	c6 80 c8 01 00 00 22 	movb   $0x22,0x1c8(%eax)
  102e30:	c6 80 69 01 00 00 60 	movb   $0x60,0x169(%eax)
  102e37:	c6 80 c9 01 00 00 7e 	movb   $0x7e,0x1c9(%eax)
  102e3e:	c6 80 6b 01 00 00 5c 	movb   $0x5c,0x16b(%eax)
  102e45:	c6 80 cb 01 00 00 7c 	movb   $0x7c,0x1cb(%eax)
  102e4c:	c6 80 73 01 00 00 2c 	movb   $0x2c,0x173(%eax)
  102e53:	c6 80 d3 01 00 00 3c 	movb   $0x3c,0x1d3(%eax)
  102e5a:	c6 80 74 01 00 00 2e 	movb   $0x2e,0x174(%eax)
  102e61:	c6 80 d4 01 00 00 3e 	movb   $0x3e,0x1d4(%eax)
  102e68:	c6 80 75 01 00 00 2f 	movb   $0x2f,0x175(%eax)
  102e6f:	c6 80 d5 01 00 00 3f 	movb   $0x3f,0x1d5(%eax)
  102e76:	c6 80 79 01 00 00 20 	movb   $0x20,0x179(%eax)
  102e7d:	c6 80 d9 01 00 00 20 	movb   $0x20,0x1d9(%eax)
  102e84:	90                   	nop
  102e85:	c9                   	leave  
  102e86:	c3                   	ret    

00102e87 <getKeyCode>:
  102e87:	55                   	push   %ebp
  102e88:	89 e5                	mov    %esp,%ebp
  102e8a:	83 ec 10             	sub    $0x10,%esp
  102e8d:	e8 b3 d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e92:	05 6e 41 00 00       	add    $0x416e,%eax
  102e97:	6a 60                	push   $0x60
  102e99:	e8 7e fc ff ff       	call   102b1c <inByte>
  102e9e:	83 c4 04             	add    $0x4,%esp
  102ea1:	0f b6 c0             	movzbl %al,%eax
  102ea4:	89 45 fc             	mov    %eax,-0x4(%ebp)
  102ea7:	6a 61                	push   $0x61
  102ea9:	e8 6e fc ff ff       	call   102b1c <inByte>
  102eae:	83 c4 04             	add    $0x4,%esp
  102eb1:	0f b6 c0             	movzbl %al,%eax
  102eb4:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102eb7:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102eba:	83 c8 80             	or     $0xffffff80,%eax
  102ebd:	0f be c0             	movsbl %al,%eax
  102ec0:	50                   	push   %eax
  102ec1:	6a 61                	push   $0x61
  102ec3:	e8 79 fc ff ff       	call   102b41 <outByte>
  102ec8:	83 c4 08             	add    $0x8,%esp
  102ecb:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102ece:	0f be c0             	movsbl %al,%eax
  102ed1:	50                   	push   %eax
  102ed2:	6a 61                	push   $0x61
  102ed4:	e8 68 fc ff ff       	call   102b41 <outByte>
  102ed9:	83 c4 08             	add    $0x8,%esp
  102edc:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  102ee3:	77 05                	ja     102eea <getKeyCode+0x63>
  102ee5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102ee8:	eb 05                	jmp    102eef <getKeyCode+0x68>
  102eea:	b8 00 00 00 00       	mov    $0x0,%eax
  102eef:	c9                   	leave  
  102ef0:	c3                   	ret    

00102ef1 <switchKeyboard>:
  102ef1:	55                   	push   %ebp
  102ef2:	89 e5                	mov    %esp,%ebp
  102ef4:	e8 4c d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102ef9:	05 07 41 00 00       	add    $0x4107,%eax
  102efe:	8b 88 fc 01 00 00    	mov    0x1fc(%eax),%ecx
  102f04:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102f0a:	39 d1                	cmp    %edx,%ecx
  102f0c:	75 0e                	jne    102f1c <switchKeyboard+0x2b>
  102f0e:	8d 90 a0 01 00 00    	lea    0x1a0(%eax),%edx
  102f14:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102f1a:	eb 0c                	jmp    102f28 <switchKeyboard+0x37>
  102f1c:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102f22:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102f28:	90                   	nop
  102f29:	5d                   	pop    %ebp
  102f2a:	c3                   	ret    

00102f2b <getChar>:
  102f2b:	55                   	push   %ebp
  102f2c:	89 e5                	mov    %esp,%ebp
  102f2e:	53                   	push   %ebx
  102f2f:	e8 01 d9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102f34:	81 c3 cc 40 00 00    	add    $0x40cc,%ebx
  102f3a:	8b 45 08             	mov    0x8(%ebp),%eax
  102f3d:	83 f8 3a             	cmp    $0x3a,%eax
  102f40:	74 32                	je     102f74 <getChar+0x49>
  102f42:	83 f8 3a             	cmp    $0x3a,%eax
  102f45:	77 0f                	ja     102f56 <getChar+0x2b>
  102f47:	83 f8 2a             	cmp    $0x2a,%eax
  102f4a:	74 21                	je     102f6d <getChar+0x42>
  102f4c:	83 f8 36             	cmp    $0x36,%eax
  102f4f:	74 1c                	je     102f6d <getChar+0x42>
  102f51:	e9 87 00 00 00       	jmp    102fdd <getChar+0xb2>
  102f56:	3d b6 00 00 00       	cmp    $0xb6,%eax
  102f5b:	74 10                	je     102f6d <getChar+0x42>
  102f5d:	3d ba 00 00 00       	cmp    $0xba,%eax
  102f62:	74 42                	je     102fa6 <getChar+0x7b>
  102f64:	3d aa 00 00 00       	cmp    $0xaa,%eax
  102f69:	74 02                	je     102f6d <getChar+0x42>
  102f6b:	eb 70                	jmp    102fdd <getChar+0xb2>
  102f6d:	e8 7f ff ff ff       	call   102ef1 <switchKeyboard>
  102f72:	eb 69                	jmp    102fdd <getChar+0xb2>
  102f74:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102f7a:	85 c0                	test   %eax,%eax
  102f7c:	75 11                	jne    102f8f <getChar+0x64>
  102f7e:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  102f85:	00 00 00 
  102f88:	e8 64 ff ff ff       	call   102ef1 <switchKeyboard>
  102f8d:	eb 4a                	jmp    102fd9 <getChar+0xae>
  102f8f:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102f95:	83 f8 01             	cmp    $0x1,%eax
  102f98:	75 3f                	jne    102fd9 <getChar+0xae>
  102f9a:	c7 83 00 02 00 00 02 	movl   $0x2,0x200(%ebx)
  102fa1:	00 00 00 
  102fa4:	eb 33                	jmp    102fd9 <getChar+0xae>
  102fa6:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102fac:	83 f8 01             	cmp    $0x1,%eax
  102faf:	75 0c                	jne    102fbd <getChar+0x92>
  102fb1:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  102fb8:	00 00 00 
  102fbb:	eb 1f                	jmp    102fdc <getChar+0xb1>
  102fbd:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102fc3:	83 f8 02             	cmp    $0x2,%eax
  102fc6:	75 14                	jne    102fdc <getChar+0xb1>
  102fc8:	c7 83 00 02 00 00 00 	movl   $0x0,0x200(%ebx)
  102fcf:	00 00 00 
  102fd2:	e8 1a ff ff ff       	call   102ef1 <switchKeyboard>
  102fd7:	eb 03                	jmp    102fdc <getChar+0xb1>
  102fd9:	90                   	nop
  102fda:	eb 01                	jmp    102fdd <getChar+0xb2>
  102fdc:	90                   	nop
  102fdd:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  102fe1:	76 04                	jbe    102fe7 <getChar+0xbc>
  102fe3:	b0 00                	mov    $0x0,%al
  102fe5:	eb 0d                	jmp    102ff4 <getChar+0xc9>
  102fe7:	8b 93 fc 01 00 00    	mov    0x1fc(%ebx),%edx
  102fed:	8b 45 08             	mov    0x8(%ebp),%eax
  102ff0:	01 d0                	add    %edx,%eax
  102ff2:	8a 00                	mov    (%eax),%al
  102ff4:	5b                   	pop    %ebx
  102ff5:	5d                   	pop    %ebp
  102ff6:	c3                   	ret    

00102ff7 <waitForInterrupt>:
  102ff7:	55                   	push   %ebp
  102ff8:	89 e5                	mov    %esp,%ebp
  102ffa:	e8 46 d4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102fff:	05 01 40 00 00       	add    $0x4001,%eax
  103004:	f4                   	hlt    
  103005:	90                   	nop
  103006:	5d                   	pop    %ebp
  103007:	c3                   	ret    

00103008 <enableInterrupt>:
  103008:	55                   	push   %ebp
  103009:	89 e5                	mov    %esp,%ebp
  10300b:	e8 35 d4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103010:	05 f0 3f 00 00       	add    $0x3ff0,%eax
  103015:	fb                   	sti    
  103016:	90                   	nop
  103017:	5d                   	pop    %ebp
  103018:	c3                   	ret    

00103019 <setGdt>:
  103019:	55                   	push   %ebp
  10301a:	89 e5                	mov    %esp,%ebp
  10301c:	e8 24 d4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103021:	05 df 3f 00 00       	add    $0x3fdf,%eax
  103026:	8b 55 0c             	mov    0xc(%ebp),%edx
  103029:	4a                   	dec    %edx
  10302a:	66 89 90 04 02 00 00 	mov    %dx,0x204(%eax)
  103031:	8b 55 08             	mov    0x8(%ebp),%edx
  103034:	66 89 90 06 02 00 00 	mov    %dx,0x206(%eax)
  10303b:	8b 55 08             	mov    0x8(%ebp),%edx
  10303e:	c1 ea 10             	shr    $0x10,%edx
  103041:	66 89 90 08 02 00 00 	mov    %dx,0x208(%eax)
  103048:	8d 80 04 02 00 00    	lea    0x204(%eax),%eax
  10304e:	0f 01 10             	lgdtl  (%eax)
  103051:	90                   	nop
  103052:	5d                   	pop    %ebp
  103053:	c3                   	ret    

00103054 <lLdt>:
  103054:	55                   	push   %ebp
  103055:	89 e5                	mov    %esp,%ebp
  103057:	83 ec 04             	sub    $0x4,%esp
  10305a:	e8 e6 d3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10305f:	05 a1 3f 00 00       	add    $0x3fa1,%eax
  103064:	8b 45 08             	mov    0x8(%ebp),%eax
  103067:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10306b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10306e:	0f 00 d0             	lldt   %ax
  103071:	90                   	nop
  103072:	c9                   	leave  
  103073:	c3                   	ret    

00103074 <initSeg>:
  103074:	55                   	push   %ebp
  103075:	89 e5                	mov    %esp,%ebp
  103077:	56                   	push   %esi
  103078:	53                   	push   %ebx
  103079:	83 ec 14             	sub    $0x14,%esp
  10307c:	e8 b4 d7 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103081:	81 c3 7f 3f 00 00    	add    $0x3f7f,%ebx
  103087:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10308e:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103094:	66 c7 40 08 ff ff    	movw   $0xffff,0x8(%eax)
  10309a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1030a0:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%eax)
  1030a6:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1030ac:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
  1030b0:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1030b6:	8a 50 0d             	mov    0xd(%eax),%dl
  1030b9:	83 e2 f0             	and    $0xfffffff0,%edx
  1030bc:	83 ca 0a             	or     $0xa,%edx
  1030bf:	88 50 0d             	mov    %dl,0xd(%eax)
  1030c2:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1030c8:	8a 50 0d             	mov    0xd(%eax),%dl
  1030cb:	83 ca 10             	or     $0x10,%edx
  1030ce:	88 50 0d             	mov    %dl,0xd(%eax)
  1030d1:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1030d7:	8a 50 0d             	mov    0xd(%eax),%dl
  1030da:	83 e2 9f             	and    $0xffffff9f,%edx
  1030dd:	88 50 0d             	mov    %dl,0xd(%eax)
  1030e0:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1030e6:	8a 50 0d             	mov    0xd(%eax),%dl
  1030e9:	83 ca 80             	or     $0xffffff80,%edx
  1030ec:	88 50 0d             	mov    %dl,0xd(%eax)
  1030ef:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1030f5:	8a 50 0e             	mov    0xe(%eax),%dl
  1030f8:	83 ca 0f             	or     $0xf,%edx
  1030fb:	88 50 0e             	mov    %dl,0xe(%eax)
  1030fe:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103104:	8a 50 0e             	mov    0xe(%eax),%dl
  103107:	83 e2 ef             	and    $0xffffffef,%edx
  10310a:	88 50 0e             	mov    %dl,0xe(%eax)
  10310d:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103113:	8a 50 0e             	mov    0xe(%eax),%dl
  103116:	83 e2 df             	and    $0xffffffdf,%edx
  103119:	88 50 0e             	mov    %dl,0xe(%eax)
  10311c:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103122:	8a 50 0e             	mov    0xe(%eax),%dl
  103125:	83 ca 40             	or     $0x40,%edx
  103128:	88 50 0e             	mov    %dl,0xe(%eax)
  10312b:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103131:	8a 50 0e             	mov    0xe(%eax),%dl
  103134:	83 ca 80             	or     $0xffffff80,%edx
  103137:	88 50 0e             	mov    %dl,0xe(%eax)
  10313a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103140:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  103144:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10314a:	66 c7 40 10 ff ff    	movw   $0xffff,0x10(%eax)
  103150:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103156:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
  10315c:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103162:	c6 40 14 00          	movb   $0x0,0x14(%eax)
  103166:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10316c:	8a 50 15             	mov    0x15(%eax),%dl
  10316f:	83 e2 f0             	and    $0xfffffff0,%edx
  103172:	83 ca 02             	or     $0x2,%edx
  103175:	88 50 15             	mov    %dl,0x15(%eax)
  103178:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10317e:	8a 50 15             	mov    0x15(%eax),%dl
  103181:	83 ca 10             	or     $0x10,%edx
  103184:	88 50 15             	mov    %dl,0x15(%eax)
  103187:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10318d:	8a 50 15             	mov    0x15(%eax),%dl
  103190:	83 e2 9f             	and    $0xffffff9f,%edx
  103193:	88 50 15             	mov    %dl,0x15(%eax)
  103196:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10319c:	8a 50 15             	mov    0x15(%eax),%dl
  10319f:	83 ca 80             	or     $0xffffff80,%edx
  1031a2:	88 50 15             	mov    %dl,0x15(%eax)
  1031a5:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1031ab:	8a 50 16             	mov    0x16(%eax),%dl
  1031ae:	83 ca 0f             	or     $0xf,%edx
  1031b1:	88 50 16             	mov    %dl,0x16(%eax)
  1031b4:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1031ba:	8a 50 16             	mov    0x16(%eax),%dl
  1031bd:	83 e2 ef             	and    $0xffffffef,%edx
  1031c0:	88 50 16             	mov    %dl,0x16(%eax)
  1031c3:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1031c9:	8a 50 16             	mov    0x16(%eax),%dl
  1031cc:	83 e2 df             	and    $0xffffffdf,%edx
  1031cf:	88 50 16             	mov    %dl,0x16(%eax)
  1031d2:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1031d8:	8a 50 16             	mov    0x16(%eax),%dl
  1031db:	83 ca 40             	or     $0x40,%edx
  1031de:	88 50 16             	mov    %dl,0x16(%eax)
  1031e1:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1031e7:	8a 50 16             	mov    0x16(%eax),%dl
  1031ea:	83 ca 80             	or     $0xffffff80,%edx
  1031ed:	88 50 16             	mov    %dl,0x16(%eax)
  1031f0:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1031f6:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  1031fa:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  103201:	e9 e1 01 00 00       	jmp    1033e7 <initSeg+0x373>
  103206:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103209:	01 c0                	add    %eax,%eax
  10320b:	40                   	inc    %eax
  10320c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10320f:	42                   	inc    %edx
  103210:	c1 e2 14             	shl    $0x14,%edx
  103213:	c1 ea 10             	shr    $0x10,%edx
  103216:	88 d1                	mov    %dl,%cl
  103218:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10321b:	42                   	inc    %edx
  10321c:	c1 e2 14             	shl    $0x14,%edx
  10321f:	c1 ea 18             	shr    $0x18,%edx
  103222:	88 55 e7             	mov    %dl,-0x19(%ebp)
  103225:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  10322b:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  103231:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103237:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  10323e:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103244:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  103248:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  10324e:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103252:	83 e1 f0             	and    $0xfffffff0,%ecx
  103255:	89 ce                	mov    %ecx,%esi
  103257:	83 ce 0a             	or     $0xa,%esi
  10325a:	89 f1                	mov    %esi,%ecx
  10325c:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103260:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103266:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10326a:	83 c9 10             	or     $0x10,%ecx
  10326d:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103271:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103277:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10327b:	83 c9 60             	or     $0x60,%ecx
  10327e:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103282:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103288:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10328c:	83 c9 80             	or     $0xffffff80,%ecx
  10328f:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103293:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103299:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10329d:	83 e1 f0             	and    $0xfffffff0,%ecx
  1032a0:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1032a4:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1032aa:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1032ae:	83 e1 ef             	and    $0xffffffef,%ecx
  1032b1:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1032b5:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1032bb:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1032bf:	83 e1 df             	and    $0xffffffdf,%ecx
  1032c2:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1032c6:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1032cc:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1032d0:	83 c9 40             	or     $0x40,%ecx
  1032d3:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1032d7:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1032dd:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1032e1:	83 c9 80             	or     $0xffffff80,%ecx
  1032e4:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1032e8:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1032ee:	8a 4d e7             	mov    -0x19(%ebp),%cl
  1032f1:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  1032f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1032f8:	40                   	inc    %eax
  1032f9:	01 c0                	add    %eax,%eax
  1032fb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1032fe:	42                   	inc    %edx
  1032ff:	c1 e2 14             	shl    $0x14,%edx
  103302:	c1 ea 10             	shr    $0x10,%edx
  103305:	88 d1                	mov    %dl,%cl
  103307:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10330a:	42                   	inc    %edx
  10330b:	c1 e2 14             	shl    $0x14,%edx
  10330e:	c1 ea 18             	shr    $0x18,%edx
  103311:	88 55 e7             	mov    %dl,-0x19(%ebp)
  103314:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  10331a:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  103320:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103326:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  10332d:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103333:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  103337:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  10333d:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103341:	83 e1 f0             	and    $0xfffffff0,%ecx
  103344:	89 ce                	mov    %ecx,%esi
  103346:	83 ce 02             	or     $0x2,%esi
  103349:	89 f1                	mov    %esi,%ecx
  10334b:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  10334f:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103355:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103359:	83 c9 10             	or     $0x10,%ecx
  10335c:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103360:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103366:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10336a:	83 c9 60             	or     $0x60,%ecx
  10336d:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103371:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103377:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10337b:	83 c9 80             	or     $0xffffff80,%ecx
  10337e:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103382:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103388:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10338c:	83 e1 f0             	and    $0xfffffff0,%ecx
  10338f:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103393:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103399:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10339d:	83 e1 ef             	and    $0xffffffef,%ecx
  1033a0:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1033a4:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1033aa:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1033ae:	83 e1 df             	and    $0xffffffdf,%ecx
  1033b1:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1033b5:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1033bb:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1033bf:	83 c9 40             	or     $0x40,%ecx
  1033c2:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1033c6:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1033cc:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  1033d0:	83 c9 80             	or     $0xffffff80,%ecx
  1033d3:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  1033d7:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1033dd:	8a 4d e7             	mov    -0x19(%ebp),%cl
  1033e0:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  1033e4:	ff 45 f4             	incl   -0xc(%ebp)
  1033e7:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  1033eb:	0f 8e 15 fe ff ff    	jle    103206 <initSeg+0x192>
  1033f1:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1033f7:	66 c7 80 98 00 00 00 	movw   $0x63,0x98(%eax)
  1033fe:	63 00 
  103400:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  103406:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  10340c:	66 89 82 9a 00 00 00 	mov    %ax,0x9a(%edx)
  103413:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  103419:	c1 e8 10             	shr    $0x10,%eax
  10341c:	88 c2                	mov    %al,%dl
  10341e:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103424:	88 90 9c 00 00 00    	mov    %dl,0x9c(%eax)
  10342a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103430:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  103436:	83 e2 f0             	and    $0xfffffff0,%edx
  103439:	83 ca 09             	or     $0x9,%edx
  10343c:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  103442:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103448:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  10344e:	83 e2 ef             	and    $0xffffffef,%edx
  103451:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  103457:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10345d:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  103463:	83 e2 9f             	and    $0xffffff9f,%edx
  103466:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  10346c:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103472:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  103478:	83 ca 80             	or     $0xffffff80,%edx
  10347b:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  103481:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103487:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10348d:	83 e2 f0             	and    $0xfffffff0,%edx
  103490:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103496:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10349c:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  1034a2:	83 e2 ef             	and    $0xffffffef,%edx
  1034a5:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  1034ab:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034b1:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  1034b7:	83 e2 df             	and    $0xffffffdf,%edx
  1034ba:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  1034c0:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034c6:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  1034cc:	83 ca 40             	or     $0x40,%edx
  1034cf:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  1034d5:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034db:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  1034e1:	83 e2 7f             	and    $0x7f,%edx
  1034e4:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  1034ea:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  1034f0:	c1 e8 18             	shr    $0x18,%eax
  1034f3:	88 c2                	mov    %al,%dl
  1034f5:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034fb:	88 90 9f 00 00 00    	mov    %dl,0x9f(%eax)
  103501:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103507:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  10350d:	83 e2 ef             	and    $0xffffffef,%edx
  103510:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  103516:	68 a0 00 00 00       	push   $0xa0
  10351b:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103521:	50                   	push   %eax
  103522:	e8 f2 fa ff ff       	call   103019 <setGdt>
  103527:	83 c4 08             	add    $0x8,%esp
  10352a:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  103530:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
  103537:	b8 98 00 00 00       	mov    $0x98,%eax
  10353c:	0f 00 d8             	ltr    %ax
  10353f:	b8 10 00 00 00       	mov    $0x10,%eax
  103544:	8e d8                	mov    %eax,%ds
  103546:	b8 10 00 00 00       	mov    $0x10,%eax
  10354b:	8e d0                	mov    %eax,%ss
  10354d:	6a 00                	push   $0x0
  10354f:	e8 00 fb ff ff       	call   103054 <lLdt>
  103554:	83 c4 04             	add    $0x4,%esp
  103557:	90                   	nop
  103558:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10355b:	5b                   	pop    %ebx
  10355c:	5e                   	pop    %esi
  10355d:	5d                   	pop    %ebp
  10355e:	c3                   	ret    

0010355f <initFS>:
  10355f:	55                   	push   %ebp
  103560:	89 e5                	mov    %esp,%ebp
  103562:	53                   	push   %ebx
  103563:	83 ec 04             	sub    $0x4,%esp
  103566:	e8 da ce ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10356b:	05 95 3a 00 00       	add    $0x3a95,%eax
  103570:	83 ec 0c             	sub    $0xc,%esp
  103573:	c7 c2 60 90 10 00    	mov    $0x109060,%edx
  103579:	52                   	push   %edx
  10357a:	89 c3                	mov    %eax,%ebx
  10357c:	e8 c8 ce ff ff       	call   100449 <readSuperBlock>
  103581:	83 c4 10             	add    $0x10,%esp
  103584:	90                   	nop
  103585:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103588:	c9                   	leave  
  103589:	c3                   	ret    

0010358a <initSem>:
  10358a:	55                   	push   %ebp
  10358b:	89 e5                	mov    %esp,%ebp
  10358d:	53                   	push   %ebx
  10358e:	83 ec 10             	sub    $0x10,%esp
  103591:	e8 af ce ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103596:	05 6a 3a 00 00       	add    $0x3a6a,%eax
  10359b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1035a2:	eb 7a                	jmp    10361e <initSem+0x94>
  1035a4:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  1035aa:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1035ad:	c1 e1 04             	shl    $0x4,%ecx
  1035b0:	01 ca                	add    %ecx,%edx
  1035b2:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1035b8:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  1035be:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1035c1:	c1 e1 04             	shl    $0x4,%ecx
  1035c4:	01 ca                	add    %ecx,%edx
  1035c6:	83 c2 04             	add    $0x4,%edx
  1035c9:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1035cf:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1035d2:	89 d1                	mov    %edx,%ecx
  1035d4:	c1 e1 04             	shl    $0x4,%ecx
  1035d7:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  1035dd:	01 ca                	add    %ecx,%edx
  1035df:	8d 4a 08             	lea    0x8(%edx),%ecx
  1035e2:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  1035e8:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  1035eb:	c1 e3 04             	shl    $0x4,%ebx
  1035ee:	01 da                	add    %ebx,%edx
  1035f0:	83 c2 08             	add    $0x8,%edx
  1035f3:	89 0a                	mov    %ecx,(%edx)
  1035f5:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1035f8:	89 d1                	mov    %edx,%ecx
  1035fa:	c1 e1 04             	shl    $0x4,%ecx
  1035fd:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103603:	01 ca                	add    %ecx,%edx
  103605:	8d 4a 08             	lea    0x8(%edx),%ecx
  103608:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  10360e:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103611:	c1 e3 04             	shl    $0x4,%ebx
  103614:	01 da                	add    %ebx,%edx
  103616:	83 c2 0c             	add    $0xc,%edx
  103619:	89 0a                	mov    %ecx,(%edx)
  10361b:	ff 45 f8             	incl   -0x8(%ebp)
  10361e:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  103622:	7e 80                	jle    1035a4 <initSem+0x1a>
  103624:	90                   	nop
  103625:	83 c4 10             	add    $0x10,%esp
  103628:	5b                   	pop    %ebx
  103629:	5d                   	pop    %ebp
  10362a:	c3                   	ret    

0010362b <initDev>:
  10362b:	55                   	push   %ebp
  10362c:	89 e5                	mov    %esp,%ebp
  10362e:	53                   	push   %ebx
  10362f:	83 ec 10             	sub    $0x10,%esp
  103632:	e8 0e ce ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103637:	05 c9 39 00 00       	add    $0x39c9,%eax
  10363c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103643:	eb 7a                	jmp    1036bf <initDev+0x94>
  103645:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  10364b:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  10364e:	c1 e1 04             	shl    $0x4,%ecx
  103651:	01 ca                	add    %ecx,%edx
  103653:	c7 02 01 00 00 00    	movl   $0x1,(%edx)
  103659:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  10365f:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103662:	c1 e1 04             	shl    $0x4,%ecx
  103665:	01 ca                	add    %ecx,%edx
  103667:	83 c2 04             	add    $0x4,%edx
  10366a:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103670:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103673:	89 d1                	mov    %edx,%ecx
  103675:	c1 e1 04             	shl    $0x4,%ecx
  103678:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  10367e:	01 ca                	add    %ecx,%edx
  103680:	8d 4a 08             	lea    0x8(%edx),%ecx
  103683:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103689:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  10368c:	c1 e3 04             	shl    $0x4,%ebx
  10368f:	01 da                	add    %ebx,%edx
  103691:	83 c2 08             	add    $0x8,%edx
  103694:	89 0a                	mov    %ecx,(%edx)
  103696:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103699:	89 d1                	mov    %edx,%ecx
  10369b:	c1 e1 04             	shl    $0x4,%ecx
  10369e:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  1036a4:	01 ca                	add    %ecx,%edx
  1036a6:	8d 4a 08             	lea    0x8(%edx),%ecx
  1036a9:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  1036af:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  1036b2:	c1 e3 04             	shl    $0x4,%ebx
  1036b5:	01 da                	add    %ebx,%edx
  1036b7:	83 c2 0c             	add    $0xc,%edx
  1036ba:	89 0a                	mov    %ecx,(%edx)
  1036bc:	ff 45 f8             	incl   -0x8(%ebp)
  1036bf:	83 7d f8 03          	cmpl   $0x3,-0x8(%ebp)
  1036c3:	7e 80                	jle    103645 <initDev+0x1a>
  1036c5:	90                   	nop
  1036c6:	83 c4 10             	add    $0x10,%esp
  1036c9:	5b                   	pop    %ebx
  1036ca:	5d                   	pop    %ebp
  1036cb:	c3                   	ret    

001036cc <loadElf>:
  1036cc:	55                   	push   %ebp
  1036cd:	89 e5                	mov    %esp,%ebp
  1036cf:	56                   	push   %esi
  1036d0:	53                   	push   %ebx
  1036d1:	81 ec a0 00 00 00    	sub    $0xa0,%esp
  1036d7:	e8 59 d1 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1036dc:	81 c3 24 39 00 00    	add    $0x3924,%ebx
  1036e2:	89 e0                	mov    %esp,%eax
  1036e4:	89 c6                	mov    %eax,%esi
  1036e6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1036ed:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1036f4:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  1036fa:	8b 40 14             	mov    0x14(%eax),%eax
  1036fd:	8d 50 ff             	lea    -0x1(%eax),%edx
  103700:	89 55 e8             	mov    %edx,-0x18(%ebp)
  103703:	89 c2                	mov    %eax,%edx
  103705:	b8 10 00 00 00       	mov    $0x10,%eax
  10370a:	48                   	dec    %eax
  10370b:	01 d0                	add    %edx,%eax
  10370d:	b9 10 00 00 00       	mov    $0x10,%ecx
  103712:	ba 00 00 00 00       	mov    $0x0,%edx
  103717:	f7 f1                	div    %ecx
  103719:	6b c0 10             	imul   $0x10,%eax,%eax
  10371c:	29 c4                	sub    %eax,%esp
  10371e:	89 e0                	mov    %esp,%eax
  103720:	83 c0 00             	add    $0x0,%eax
  103723:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103726:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  10372d:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
  103734:	00 00 00 
  103737:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10373e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103745:	83 ec 0c             	sub    $0xc,%esp
  103748:	8d 83 58 d5 ff ff    	lea    -0x2aa8(%ebx),%eax
  10374e:	50                   	push   %eax
  10374f:	e8 f5 05 00 00       	call   103d49 <putString>
  103754:	83 c4 10             	add    $0x10,%esp
  103757:	83 ec 0c             	sub    $0xc,%esp
  10375a:	ff 75 08             	pushl  0x8(%ebp)
  10375d:	e8 e7 05 00 00       	call   103d49 <putString>
  103762:	83 c4 10             	add    $0x10,%esp
  103765:	83 ec 0c             	sub    $0xc,%esp
  103768:	6a 0a                	push   $0xa
  10376a:	e8 a4 05 00 00       	call   103d13 <putChar>
  10376f:	83 c4 10             	add    $0x10,%esp
  103772:	ff 75 08             	pushl  0x8(%ebp)
  103775:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
  10377b:	50                   	push   %eax
  10377c:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103782:	50                   	push   %eax
  103783:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103789:	50                   	push   %eax
  10378a:	e8 f6 cd ff ff       	call   100585 <readInode>
  10378f:	83 c4 10             	add    $0x10,%esp
  103792:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103795:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  103799:	75 0a                	jne    1037a5 <loadElf+0xd9>
  10379b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1037a0:	e9 5c 01 00 00       	jmp    103901 <loadElf+0x235>
  1037a5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1037a8:	50                   	push   %eax
  1037a9:	6a 00                	push   $0x0
  1037ab:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  1037b1:	50                   	push   %eax
  1037b2:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  1037b8:	50                   	push   %eax
  1037b9:	e8 bc cc ff ff       	call   10047a <readBlock>
  1037be:	83 c4 10             	add    $0x10,%esp
  1037c1:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1037c4:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  1037c8:	75 0a                	jne    1037d4 <loadElf+0x108>
  1037ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1037cf:	e9 2d 01 00 00       	jmp    103901 <loadElf+0x235>
  1037d4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1037d7:	89 45 dc             	mov    %eax,-0x24(%ebp)
  1037da:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1037dd:	8b 00                	mov    (%eax),%eax
  1037df:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  1037e4:	74 0a                	je     1037f0 <loadElf+0x124>
  1037e6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1037eb:	e9 11 01 00 00       	jmp    103901 <loadElf+0x235>
  1037f0:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1037f7:	eb 31                	jmp    10382a <loadElf+0x15e>
  1037f9:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  1037ff:	8b 40 14             	mov    0x14(%eax),%eax
  103802:	0f af 45 ec          	imul   -0x14(%ebp),%eax
  103806:	89 c2                	mov    %eax,%edx
  103808:	8b 45 0c             	mov    0xc(%ebp),%eax
  10380b:	01 d0                	add    %edx,%eax
  10380d:	50                   	push   %eax
  10380e:	ff 75 ec             	pushl  -0x14(%ebp)
  103811:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103817:	50                   	push   %eax
  103818:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  10381e:	50                   	push   %eax
  10381f:	e8 56 cc ff ff       	call   10047a <readBlock>
  103824:	83 c4 10             	add    $0x10,%esp
  103827:	ff 45 ec             	incl   -0x14(%ebp)
  10382a:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
  103830:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  103833:	7c c4                	jl     1037f9 <loadElf+0x12d>
  103835:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103838:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10383b:	8b 40 1c             	mov    0x1c(%eax),%eax
  10383e:	01 d0                	add    %edx,%eax
  103840:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103843:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10384a:	e9 90 00 00 00       	jmp    1038df <loadElf+0x213>
  10384f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103852:	8b 00                	mov    (%eax),%eax
  103854:	83 f8 01             	cmp    $0x1,%eax
  103857:	75 7f                	jne    1038d8 <loadElf+0x20c>
  103859:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10385c:	8b 50 08             	mov    0x8(%eax),%edx
  10385f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103862:	8b 40 04             	mov    0x4(%eax),%eax
  103865:	39 c2                	cmp    %eax,%edx
  103867:	74 6f                	je     1038d8 <loadElf+0x20c>
  103869:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103870:	eb 2b                	jmp    10389d <loadElf+0x1d1>
  103872:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103875:	8b 50 04             	mov    0x4(%eax),%edx
  103878:	8b 45 0c             	mov    0xc(%ebp),%eax
  10387b:	01 c2                	add    %eax,%edx
  10387d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103880:	01 d0                	add    %edx,%eax
  103882:	89 c1                	mov    %eax,%ecx
  103884:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103887:	8b 50 08             	mov    0x8(%eax),%edx
  10388a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10388d:	01 c2                	add    %eax,%edx
  10388f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103892:	01 d0                	add    %edx,%eax
  103894:	89 c2                	mov    %eax,%edx
  103896:	8a 01                	mov    (%ecx),%al
  103898:	88 02                	mov    %al,(%edx)
  10389a:	ff 45 f0             	incl   -0x10(%ebp)
  10389d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1038a0:	8b 50 10             	mov    0x10(%eax),%edx
  1038a3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1038a6:	39 c2                	cmp    %eax,%edx
  1038a8:	77 c8                	ja     103872 <loadElf+0x1a6>
  1038aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1038ad:	8b 40 10             	mov    0x10(%eax),%eax
  1038b0:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1038b3:	eb 16                	jmp    1038cb <loadElf+0x1ff>
  1038b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1038b8:	8b 50 08             	mov    0x8(%eax),%edx
  1038bb:	8b 45 0c             	mov    0xc(%ebp),%eax
  1038be:	01 c2                	add    %eax,%edx
  1038c0:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1038c3:	01 d0                	add    %edx,%eax
  1038c5:	c6 00 00             	movb   $0x0,(%eax)
  1038c8:	ff 45 f0             	incl   -0x10(%ebp)
  1038cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1038ce:	8b 50 14             	mov    0x14(%eax),%edx
  1038d1:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1038d4:	39 c2                	cmp    %eax,%edx
  1038d6:	77 dd                	ja     1038b5 <loadElf+0x1e9>
  1038d8:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  1038dc:	ff 45 ec             	incl   -0x14(%ebp)
  1038df:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1038e2:	8b 40 2c             	mov    0x2c(%eax),%eax
  1038e5:	0f b7 c0             	movzwl %ax,%eax
  1038e8:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  1038eb:	0f 8c 5e ff ff ff    	jl     10384f <loadElf+0x183>
  1038f1:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1038f4:	8b 50 18             	mov    0x18(%eax),%edx
  1038f7:	8b 45 10             	mov    0x10(%ebp),%eax
  1038fa:	89 10                	mov    %edx,(%eax)
  1038fc:	b8 00 00 00 00       	mov    $0x0,%eax
  103901:	89 f4                	mov    %esi,%esp
  103903:	8d 65 f8             	lea    -0x8(%ebp),%esp
  103906:	5b                   	pop    %ebx
  103907:	5e                   	pop    %esi
  103908:	5d                   	pop    %ebp
  103909:	c3                   	ret    

0010390a <loadUMain>:
  10390a:	55                   	push   %ebp
  10390b:	89 e5                	mov    %esp,%ebp
  10390d:	53                   	push   %ebx
  10390e:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  103914:	e8 1c cf ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103919:	81 c3 e7 36 00 00    	add    $0x36e7,%ebx
  10391f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103926:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  10392d:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  103934:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  10393b:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  103942:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  103949:	00 00 00 
  10394c:	8d 83 5f d5 ff ff    	lea    -0x2aa1(%ebx),%eax
  103952:	50                   	push   %eax
  103953:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  103959:	50                   	push   %eax
  10395a:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  103960:	50                   	push   %eax
  103961:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103967:	50                   	push   %eax
  103968:	e8 18 cc ff ff       	call   100585 <readInode>
  10396d:	83 c4 10             	add    $0x10,%esp
  103970:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103977:	eb 31                	jmp    1039aa <loadUMain+0xa0>
  103979:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  10397f:	8b 40 14             	mov    0x14(%eax),%eax
  103982:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  103986:	89 c2                	mov    %eax,%edx
  103988:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10398b:	01 d0                	add    %edx,%eax
  10398d:	50                   	push   %eax
  10398e:	ff 75 f4             	pushl  -0xc(%ebp)
  103991:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  103997:	50                   	push   %eax
  103998:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  10399e:	50                   	push   %eax
  10399f:	e8 d6 ca ff ff       	call   10047a <readBlock>
  1039a4:	83 c4 10             	add    $0x10,%esp
  1039a7:	ff 45 f4             	incl   -0xc(%ebp)
  1039aa:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  1039b0:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1039b3:	7c c4                	jl     103979 <loadUMain+0x6f>
  1039b5:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1039b8:	8b 40 18             	mov    0x18(%eax),%eax
  1039bb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1039be:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1039c1:	8b 40 1c             	mov    0x1c(%eax),%eax
  1039c4:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1039c7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1039ca:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1039cd:	01 d0                	add    %edx,%eax
  1039cf:	8b 40 04             	mov    0x4(%eax),%eax
  1039d2:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1039d5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1039dc:	eb 1c                	jmp    1039fa <loadUMain+0xf0>
  1039de:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1039e1:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1039e4:	01 c2                	add    %eax,%edx
  1039e6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1039e9:	01 d0                	add    %edx,%eax
  1039eb:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1039ee:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1039f1:	01 ca                	add    %ecx,%edx
  1039f3:	8a 00                	mov    (%eax),%al
  1039f5:	88 02                	mov    %al,(%edx)
  1039f7:	ff 45 f4             	incl   -0xc(%ebp)
  1039fa:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  103a01:	7e db                	jle    1039de <loadUMain+0xd4>
  103a03:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103a06:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103a09:	c9                   	leave  
  103a0a:	c3                   	ret    

00103a0b <initProc>:
  103a0b:	55                   	push   %ebp
  103a0c:	89 e5                	mov    %esp,%ebp
  103a0e:	53                   	push   %ebx
  103a0f:	83 ec 14             	sub    $0x14,%esp
  103a12:	e8 1e ce ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103a17:	81 c3 e9 35 00 00    	add    $0x35e9,%ebx
  103a1d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103a24:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103a2b:	eb 3b                	jmp    103a68 <initProc+0x5d>
  103a2d:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  103a33:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103a36:	89 d0                	mov    %edx,%eax
  103a38:	01 c0                	add    %eax,%eax
  103a3a:	01 d0                	add    %edx,%eax
  103a3c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  103a43:	01 d0                	add    %edx,%eax
  103a45:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  103a4c:	01 d0                	add    %edx,%eax
  103a4e:	89 c2                	mov    %eax,%edx
  103a50:	c1 e2 04             	shl    $0x4,%edx
  103a53:	01 d0                	add    %edx,%eax
  103a55:	c1 e0 02             	shl    $0x2,%eax
  103a58:	01 c8                	add    %ecx,%eax
  103a5a:	05 54 40 00 00       	add    $0x4054,%eax
  103a5f:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  103a65:	ff 45 f4             	incl   -0xc(%ebp)
  103a68:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  103a6c:	7e bf                	jle    103a2d <initProc+0x22>
  103a6e:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103a74:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  103a7a:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103a80:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  103a86:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103a8c:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  103a92:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103a98:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  103a9e:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103aa4:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  103aab:	00 00 00 
  103aae:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ab4:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  103abb:	00 00 00 
  103abe:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ac4:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  103acb:	00 00 00 
  103ace:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ad4:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  103adb:	00 00 00 
  103ade:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ae4:	8d 90 8c 80 00 00    	lea    0x808c(%eax),%edx
  103aea:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103af0:	89 90 d8 80 00 00    	mov    %edx,0x80d8(%eax)
  103af6:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103afc:	8d 90 d8 80 00 00    	lea    0x80d8(%eax),%edx
  103b02:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b08:	89 90 dc 80 00 00    	mov    %edx,0x80dc(%eax)
  103b0e:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b14:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  103b1b:	00 00 00 
  103b1e:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b24:	c7 80 e4 80 00 00 00 	movl   $0x0,0x80e4(%eax)
  103b2b:	00 00 00 
  103b2e:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b34:	c7 80 e8 80 00 00 00 	movl   $0x0,0x80e8(%eax)
  103b3b:	00 00 00 
  103b3e:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b44:	c7 80 ec 80 00 00 01 	movl   $0x1,0x80ec(%eax)
  103b4b:	00 00 00 
  103b4e:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b54:	c7 80 d4 80 00 00 23 	movl   $0x23,0x80d4(%eax)
  103b5b:	00 00 00 
  103b5e:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b64:	c7 80 d0 80 00 00 00 	movl   $0x100000,0x80d0(%eax)
  103b6b:	00 10 00 
  103b6e:	9c                   	pushf  
  103b6f:	5a                   	pop    %edx
  103b70:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b76:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  103b7c:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b82:	8b 80 cc 80 00 00    	mov    0x80cc(%eax),%eax
  103b88:	80 cc 02             	or     $0x2,%ah
  103b8b:	89 c2                	mov    %eax,%edx
  103b8d:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b93:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  103b99:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103b9f:	c7 80 c8 80 00 00 1b 	movl   $0x1b,0x80c8(%eax)
  103ba6:	00 00 00 
  103ba9:	e8 5c fd ff ff       	call   10390a <loadUMain>
  103bae:	89 c2                	mov    %eax,%edx
  103bb0:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103bb6:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  103bbc:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103bc2:	c7 80 98 80 00 00 23 	movl   $0x23,0x8098(%eax)
  103bc9:	00 00 00 
  103bcc:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103bd2:	c7 80 94 80 00 00 23 	movl   $0x23,0x8094(%eax)
  103bd9:	00 00 00 
  103bdc:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103be2:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  103be9:	00 00 00 
  103bec:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103bf2:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  103bf9:	00 00 00 
  103bfc:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  103c02:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  103c08:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103c0e:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  103c14:	e8 ef f3 ff ff       	call   103008 <enableInterrupt>
  103c19:	cd 20                	int    $0x20
  103c1b:	e8 d7 f3 ff ff       	call   102ff7 <waitForInterrupt>
  103c20:	eb f9                	jmp    103c1b <initProc+0x210>

00103c22 <inByte>:
  103c22:	55                   	push   %ebp
  103c23:	89 e5                	mov    %esp,%ebp
  103c25:	83 ec 14             	sub    $0x14,%esp
  103c28:	e8 18 c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103c2d:	05 d3 33 00 00       	add    $0x33d3,%eax
  103c32:	8b 45 08             	mov    0x8(%ebp),%eax
  103c35:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  103c39:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103c3c:	89 c2                	mov    %eax,%edx
  103c3e:	ec                   	in     (%dx),%al
  103c3f:	88 45 ff             	mov    %al,-0x1(%ebp)
  103c42:	8a 45 ff             	mov    -0x1(%ebp),%al
  103c45:	c9                   	leave  
  103c46:	c3                   	ret    

00103c47 <outByte>:
  103c47:	55                   	push   %ebp
  103c48:	89 e5                	mov    %esp,%ebp
  103c4a:	83 ec 08             	sub    $0x8,%esp
  103c4d:	e8 f3 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103c52:	05 ae 33 00 00       	add    $0x33ae,%eax
  103c57:	8b 45 08             	mov    0x8(%ebp),%eax
  103c5a:	8b 55 0c             	mov    0xc(%ebp),%edx
  103c5d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103c61:	88 d0                	mov    %dl,%al
  103c63:	88 45 f8             	mov    %al,-0x8(%ebp)
  103c66:	8a 45 f8             	mov    -0x8(%ebp),%al
  103c69:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103c6c:	ee                   	out    %al,(%dx)
  103c6d:	90                   	nop
  103c6e:	c9                   	leave  
  103c6f:	c3                   	ret    

00103c70 <initSerial>:
  103c70:	55                   	push   %ebp
  103c71:	89 e5                	mov    %esp,%ebp
  103c73:	e8 cd c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103c78:	05 88 33 00 00       	add    $0x3388,%eax
  103c7d:	6a 00                	push   $0x0
  103c7f:	68 f9 03 00 00       	push   $0x3f9
  103c84:	e8 be ff ff ff       	call   103c47 <outByte>
  103c89:	83 c4 08             	add    $0x8,%esp
  103c8c:	6a 80                	push   $0xffffff80
  103c8e:	68 fb 03 00 00       	push   $0x3fb
  103c93:	e8 af ff ff ff       	call   103c47 <outByte>
  103c98:	83 c4 08             	add    $0x8,%esp
  103c9b:	6a 01                	push   $0x1
  103c9d:	68 f8 03 00 00       	push   $0x3f8
  103ca2:	e8 a0 ff ff ff       	call   103c47 <outByte>
  103ca7:	83 c4 08             	add    $0x8,%esp
  103caa:	6a 00                	push   $0x0
  103cac:	68 f9 03 00 00       	push   $0x3f9
  103cb1:	e8 91 ff ff ff       	call   103c47 <outByte>
  103cb6:	83 c4 08             	add    $0x8,%esp
  103cb9:	6a 03                	push   $0x3
  103cbb:	68 fb 03 00 00       	push   $0x3fb
  103cc0:	e8 82 ff ff ff       	call   103c47 <outByte>
  103cc5:	83 c4 08             	add    $0x8,%esp
  103cc8:	6a c7                	push   $0xffffffc7
  103cca:	68 fa 03 00 00       	push   $0x3fa
  103ccf:	e8 73 ff ff ff       	call   103c47 <outByte>
  103cd4:	83 c4 08             	add    $0x8,%esp
  103cd7:	6a 0b                	push   $0xb
  103cd9:	68 fc 03 00 00       	push   $0x3fc
  103cde:	e8 64 ff ff ff       	call   103c47 <outByte>
  103ce3:	83 c4 08             	add    $0x8,%esp
  103ce6:	90                   	nop
  103ce7:	c9                   	leave  
  103ce8:	c3                   	ret    

00103ce9 <serialIdle>:
  103ce9:	55                   	push   %ebp
  103cea:	89 e5                	mov    %esp,%ebp
  103cec:	e8 54 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103cf1:	05 0f 33 00 00       	add    $0x330f,%eax
  103cf6:	68 fd 03 00 00       	push   $0x3fd
  103cfb:	e8 22 ff ff ff       	call   103c22 <inByte>
  103d00:	83 c4 04             	add    $0x4,%esp
  103d03:	0f b6 c0             	movzbl %al,%eax
  103d06:	83 e0 20             	and    $0x20,%eax
  103d09:	85 c0                	test   %eax,%eax
  103d0b:	0f 95 c0             	setne  %al
  103d0e:	0f b6 c0             	movzbl %al,%eax
  103d11:	c9                   	leave  
  103d12:	c3                   	ret    

00103d13 <putChar>:
  103d13:	55                   	push   %ebp
  103d14:	89 e5                	mov    %esp,%ebp
  103d16:	83 ec 04             	sub    $0x4,%esp
  103d19:	e8 27 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103d1e:	05 e2 32 00 00       	add    $0x32e2,%eax
  103d23:	8b 45 08             	mov    0x8(%ebp),%eax
  103d26:	88 45 fc             	mov    %al,-0x4(%ebp)
  103d29:	90                   	nop
  103d2a:	e8 ba ff ff ff       	call   103ce9 <serialIdle>
  103d2f:	83 f8 01             	cmp    $0x1,%eax
  103d32:	75 f6                	jne    103d2a <putChar+0x17>
  103d34:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
  103d38:	50                   	push   %eax
  103d39:	68 f8 03 00 00       	push   $0x3f8
  103d3e:	e8 04 ff ff ff       	call   103c47 <outByte>
  103d43:	83 c4 08             	add    $0x8,%esp
  103d46:	90                   	nop
  103d47:	c9                   	leave  
  103d48:	c3                   	ret    

00103d49 <putString>:
  103d49:	55                   	push   %ebp
  103d4a:	89 e5                	mov    %esp,%ebp
  103d4c:	83 ec 10             	sub    $0x10,%esp
  103d4f:	e8 f1 c6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103d54:	05 ac 32 00 00       	add    $0x32ac,%eax
  103d59:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103d60:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103d64:	74 30                	je     103d96 <putString+0x4d>
  103d66:	eb 1e                	jmp    103d86 <putString+0x3d>
  103d68:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103d6b:	8d 50 01             	lea    0x1(%eax),%edx
  103d6e:	89 55 fc             	mov    %edx,-0x4(%ebp)
  103d71:	89 c2                	mov    %eax,%edx
  103d73:	8b 45 08             	mov    0x8(%ebp),%eax
  103d76:	01 d0                	add    %edx,%eax
  103d78:	8a 00                	mov    (%eax),%al
  103d7a:	0f be c0             	movsbl %al,%eax
  103d7d:	50                   	push   %eax
  103d7e:	e8 90 ff ff ff       	call   103d13 <putChar>
  103d83:	83 c4 04             	add    $0x4,%esp
  103d86:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103d89:	8b 45 08             	mov    0x8(%ebp),%eax
  103d8c:	01 d0                	add    %edx,%eax
  103d8e:	8a 00                	mov    (%eax),%al
  103d90:	84 c0                	test   %al,%al
  103d92:	75 d4                	jne    103d68 <putString+0x1f>
  103d94:	eb 01                	jmp    103d97 <putString+0x4e>
  103d96:	90                   	nop
  103d97:	c9                   	leave  
  103d98:	c3                   	ret    

00103d99 <putInt>:
  103d99:	55                   	push   %ebp
  103d9a:	89 e5                	mov    %esp,%ebp
  103d9c:	83 ec 30             	sub    $0x30,%esp
  103d9f:	e8 a1 c6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103da4:	05 5c 32 00 00       	add    $0x325c,%eax
  103da9:	8d 45 dc             	lea    -0x24(%ebp),%eax
  103dac:	83 c0 1f             	add    $0x1f,%eax
  103daf:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103db2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103db5:	c6 00 00             	movb   $0x0,(%eax)
  103db8:	ff 4d fc             	decl   -0x4(%ebp)
  103dbb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103dbe:	c6 00 0a             	movb   $0xa,(%eax)
  103dc1:	8b 45 08             	mov    0x8(%ebp),%eax
  103dc4:	b9 0a 00 00 00       	mov    $0xa,%ecx
  103dc9:	99                   	cltd   
  103dca:	f7 f9                	idiv   %ecx
  103dcc:	89 d0                	mov    %edx,%eax
  103dce:	83 c0 30             	add    $0x30,%eax
  103dd1:	ff 4d fc             	decl   -0x4(%ebp)
  103dd4:	88 c2                	mov    %al,%dl
  103dd6:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103dd9:	88 10                	mov    %dl,(%eax)
  103ddb:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103dde:	b8 67 66 66 66       	mov    $0x66666667,%eax
  103de3:	f7 e9                	imul   %ecx
  103de5:	c1 fa 02             	sar    $0x2,%edx
  103de8:	89 c8                	mov    %ecx,%eax
  103dea:	c1 f8 1f             	sar    $0x1f,%eax
  103ded:	29 c2                	sub    %eax,%edx
  103def:	89 d0                	mov    %edx,%eax
  103df1:	89 45 08             	mov    %eax,0x8(%ebp)
  103df4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103df8:	75 c7                	jne    103dc1 <putInt+0x28>
  103dfa:	ff 75 fc             	pushl  -0x4(%ebp)
  103dfd:	e8 47 ff ff ff       	call   103d49 <putString>
  103e02:	83 c4 04             	add    $0x4,%esp
  103e05:	90                   	nop
  103e06:	c9                   	leave  
  103e07:	c3                   	ret    

00103e08 <outByte>:
  103e08:	55                   	push   %ebp
  103e09:	89 e5                	mov    %esp,%ebp
  103e0b:	83 ec 08             	sub    $0x8,%esp
  103e0e:	e8 32 c6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103e13:	05 ed 31 00 00       	add    $0x31ed,%eax
  103e18:	8b 45 08             	mov    0x8(%ebp),%eax
  103e1b:	8b 55 0c             	mov    0xc(%ebp),%edx
  103e1e:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103e22:	88 d0                	mov    %dl,%al
  103e24:	88 45 f8             	mov    %al,-0x8(%ebp)
  103e27:	8a 45 f8             	mov    -0x8(%ebp),%al
  103e2a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103e2d:	ee                   	out    %al,(%dx)
  103e2e:	90                   	nop
  103e2f:	c9                   	leave  
  103e30:	c3                   	ret    

00103e31 <initTimer>:
  103e31:	55                   	push   %ebp
  103e32:	89 e5                	mov    %esp,%ebp
  103e34:	83 ec 10             	sub    $0x10,%esp
  103e37:	e8 09 c6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103e3c:	05 c4 31 00 00       	add    $0x31c4,%eax
  103e41:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  103e48:	6a 34                	push   $0x34
  103e4a:	6a 43                	push   $0x43
  103e4c:	e8 b7 ff ff ff       	call   103e08 <outByte>
  103e51:	83 c4 08             	add    $0x8,%esp
  103e54:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103e57:	25 ff 00 00 80       	and    $0x800000ff,%eax
  103e5c:	85 c0                	test   %eax,%eax
  103e5e:	79 07                	jns    103e67 <initTimer+0x36>
  103e60:	48                   	dec    %eax
  103e61:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  103e66:	40                   	inc    %eax
  103e67:	0f be c0             	movsbl %al,%eax
  103e6a:	50                   	push   %eax
  103e6b:	6a 40                	push   $0x40
  103e6d:	e8 96 ff ff ff       	call   103e08 <outByte>
  103e72:	83 c4 08             	add    $0x8,%esp
  103e75:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103e78:	85 c0                	test   %eax,%eax
  103e7a:	79 05                	jns    103e81 <initTimer+0x50>
  103e7c:	05 ff 00 00 00       	add    $0xff,%eax
  103e81:	c1 f8 08             	sar    $0x8,%eax
  103e84:	0f be c0             	movsbl %al,%eax
  103e87:	50                   	push   %eax
  103e88:	6a 40                	push   $0x40
  103e8a:	e8 79 ff ff ff       	call   103e08 <outByte>
  103e8f:	83 c4 08             	add    $0x8,%esp
  103e92:	90                   	nop
  103e93:	c9                   	leave  
  103e94:	c3                   	ret    

00103e95 <outByte>:
  103e95:	55                   	push   %ebp
  103e96:	89 e5                	mov    %esp,%ebp
  103e98:	83 ec 08             	sub    $0x8,%esp
  103e9b:	e8 a5 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103ea0:	05 60 31 00 00       	add    $0x3160,%eax
  103ea5:	8b 45 08             	mov    0x8(%ebp),%eax
  103ea8:	8b 55 0c             	mov    0xc(%ebp),%edx
  103eab:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103eaf:	88 d0                	mov    %dl,%al
  103eb1:	88 45 f8             	mov    %al,-0x8(%ebp)
  103eb4:	8a 45 f8             	mov    -0x8(%ebp),%al
  103eb7:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103eba:	ee                   	out    %al,(%dx)
  103ebb:	90                   	nop
  103ebc:	c9                   	leave  
  103ebd:	c3                   	ret    

00103ebe <initVga>:
  103ebe:	55                   	push   %ebp
  103ebf:	89 e5                	mov    %esp,%ebp
  103ec1:	83 ec 08             	sub    $0x8,%esp
  103ec4:	e8 7c c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103ec9:	05 37 31 00 00       	add    $0x3137,%eax
  103ece:	c7 80 0c 02 00 00 00 	movl   $0x0,0x20c(%eax)
  103ed5:	00 00 00 
  103ed8:	c7 80 10 02 00 00 00 	movl   $0x0,0x210(%eax)
  103edf:	00 00 00 
  103ee2:	c7 80 14 02 00 00 00 	movl   $0x0,0x214(%eax)
  103ee9:	00 00 00 
  103eec:	e8 12 00 00 00       	call   103f03 <clearScreen>
  103ef1:	83 ec 08             	sub    $0x8,%esp
  103ef4:	6a 00                	push   $0x0
  103ef6:	6a 00                	push   $0x0
  103ef8:	e8 5a 00 00 00       	call   103f57 <updateCursor>
  103efd:	83 c4 10             	add    $0x10,%esp
  103f00:	90                   	nop
  103f01:	c9                   	leave  
  103f02:	c3                   	ret    

00103f03 <clearScreen>:
  103f03:	55                   	push   %ebp
  103f04:	89 e5                	mov    %esp,%ebp
  103f06:	83 ec 10             	sub    $0x10,%esp
  103f09:	e8 37 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103f0e:	05 f2 30 00 00       	add    $0x30f2,%eax
  103f13:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103f1a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103f21:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  103f27:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103f2e:	eb 1b                	jmp    103f4b <clearScreen+0x48>
  103f30:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103f33:	01 c0                	add    %eax,%eax
  103f35:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103f38:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103f3b:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  103f41:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  103f45:	66 89 02             	mov    %ax,(%edx)
  103f48:	ff 45 fc             	incl   -0x4(%ebp)
  103f4b:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  103f52:	7e dc                	jle    103f30 <clearScreen+0x2d>
  103f54:	90                   	nop
  103f55:	c9                   	leave  
  103f56:	c3                   	ret    

00103f57 <updateCursor>:
  103f57:	55                   	push   %ebp
  103f58:	89 e5                	mov    %esp,%ebp
  103f5a:	83 ec 10             	sub    $0x10,%esp
  103f5d:	e8 e3 c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103f62:	05 9e 30 00 00       	add    $0x309e,%eax
  103f67:	8b 55 08             	mov    0x8(%ebp),%edx
  103f6a:	89 d0                	mov    %edx,%eax
  103f6c:	c1 e0 02             	shl    $0x2,%eax
  103f6f:	01 d0                	add    %edx,%eax
  103f71:	c1 e0 04             	shl    $0x4,%eax
  103f74:	89 c2                	mov    %eax,%edx
  103f76:	8b 45 0c             	mov    0xc(%ebp),%eax
  103f79:	01 d0                	add    %edx,%eax
  103f7b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103f7e:	6a 0f                	push   $0xf
  103f80:	68 d4 03 00 00       	push   $0x3d4
  103f85:	e8 0b ff ff ff       	call   103e95 <outByte>
  103f8a:	83 c4 08             	add    $0x8,%esp
  103f8d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103f90:	0f be c0             	movsbl %al,%eax
  103f93:	50                   	push   %eax
  103f94:	68 d5 03 00 00       	push   $0x3d5
  103f99:	e8 f7 fe ff ff       	call   103e95 <outByte>
  103f9e:	83 c4 08             	add    $0x8,%esp
  103fa1:	6a 0e                	push   $0xe
  103fa3:	68 d4 03 00 00       	push   $0x3d4
  103fa8:	e8 e8 fe ff ff       	call   103e95 <outByte>
  103fad:	83 c4 08             	add    $0x8,%esp
  103fb0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103fb3:	c1 f8 08             	sar    $0x8,%eax
  103fb6:	0f be c0             	movsbl %al,%eax
  103fb9:	50                   	push   %eax
  103fba:	68 d5 03 00 00       	push   $0x3d5
  103fbf:	e8 d1 fe ff ff       	call   103e95 <outByte>
  103fc4:	83 c4 08             	add    $0x8,%esp
  103fc7:	90                   	nop
  103fc8:	c9                   	leave  
  103fc9:	c3                   	ret    

00103fca <scrollScreen>:
  103fca:	55                   	push   %ebp
  103fcb:	89 e5                	mov    %esp,%ebp
  103fcd:	53                   	push   %ebx
  103fce:	83 ec 10             	sub    $0x10,%esp
  103fd1:	e8 3e eb ff ff       	call   102b14 <__x86.get_pc_thunk.dx>
  103fd6:	81 c2 2a 30 00 00    	add    $0x302a,%edx
  103fdc:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103fe3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103fea:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  103ff0:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103ff7:	eb 2b                	jmp    104024 <scrollScreen+0x5a>
  103ff9:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103ffc:	01 c0                	add    %eax,%eax
  103ffe:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104001:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104004:	05 00 80 0b 00       	add    $0xb8000,%eax
  104009:	66 8b 00             	mov    (%eax),%ax
  10400c:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  104010:	c7 c1 60 d9 12 00    	mov    $0x12d960,%ecx
  104016:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  104019:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  10401d:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  104021:	ff 45 f8             	incl   -0x8(%ebp)
  104024:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  10402b:	7e cc                	jle    103ff9 <scrollScreen+0x2f>
  10402d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  104034:	eb 2f                	jmp    104065 <scrollScreen+0x9b>
  104036:	8b 45 f8             	mov    -0x8(%ebp),%eax
  104039:	01 c0                	add    %eax,%eax
  10403b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10403e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  104041:	8d 48 50             	lea    0x50(%eax),%ecx
  104044:	c7 c0 60 d9 12 00    	mov    $0x12d960,%eax
  10404a:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  10404e:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  104052:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104055:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  10405b:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  10405f:	66 89 01             	mov    %ax,(%ecx)
  104062:	ff 45 f8             	incl   -0x8(%ebp)
  104065:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  10406c:	7e c8                	jle    104036 <scrollScreen+0x6c>
  10406e:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  104074:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  10407b:	eb 1b                	jmp    104098 <scrollScreen+0xce>
  10407d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  104080:	01 c0                	add    %eax,%eax
  104082:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104085:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104088:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  10408e:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  104092:	66 89 02             	mov    %ax,(%edx)
  104095:	ff 45 f8             	incl   -0x8(%ebp)
  104098:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  10409f:	7e dc                	jle    10407d <scrollScreen+0xb3>
  1040a1:	90                   	nop
  1040a2:	83 c4 10             	add    $0x10,%esp
  1040a5:	5b                   	pop    %ebx
  1040a6:	5d                   	pop    %ebp
  1040a7:	c3                   	ret    

001040a8 <waitForInterrupt>:
  1040a8:	55                   	push   %ebp
  1040a9:	89 e5                	mov    %esp,%ebp
  1040ab:	e8 95 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040b0:	05 50 2f 00 00       	add    $0x2f50,%eax
  1040b5:	f4                   	hlt    
  1040b6:	90                   	nop
  1040b7:	5d                   	pop    %ebp
  1040b8:	c3                   	ret    

001040b9 <disableInterrupt>:
  1040b9:	55                   	push   %ebp
  1040ba:	89 e5                	mov    %esp,%ebp
  1040bc:	e8 84 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040c1:	05 3f 2f 00 00       	add    $0x2f3f,%eax
  1040c6:	fa                   	cli    
  1040c7:	90                   	nop
  1040c8:	5d                   	pop    %ebp
  1040c9:	c3                   	ret    

001040ca <i2A>:
  1040ca:	55                   	push   %ebp
  1040cb:	89 e5                	mov    %esp,%ebp
  1040cd:	83 ec 10             	sub    $0x10,%esp
  1040d0:	e8 70 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040d5:	05 2b 2f 00 00       	add    $0x2f2b,%eax
  1040da:	8d 80 35 02 00 00    	lea    0x235(%eax),%eax
  1040e0:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1040e3:	8b 45 08             	mov    0x8(%ebp),%eax
  1040e6:	b9 0a 00 00 00       	mov    $0xa,%ecx
  1040eb:	99                   	cltd   
  1040ec:	f7 f9                	idiv   %ecx
  1040ee:	89 d0                	mov    %edx,%eax
  1040f0:	83 c0 30             	add    $0x30,%eax
  1040f3:	ff 4d fc             	decl   -0x4(%ebp)
  1040f6:	88 c2                	mov    %al,%dl
  1040f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1040fb:	88 10                	mov    %dl,(%eax)
  1040fd:	8b 4d 08             	mov    0x8(%ebp),%ecx
  104100:	b8 67 66 66 66       	mov    $0x66666667,%eax
  104105:	f7 e9                	imul   %ecx
  104107:	c1 fa 02             	sar    $0x2,%edx
  10410a:	89 c8                	mov    %ecx,%eax
  10410c:	c1 f8 1f             	sar    $0x1f,%eax
  10410f:	29 c2                	sub    %eax,%edx
  104111:	89 d0                	mov    %edx,%eax
  104113:	89 45 08             	mov    %eax,0x8(%ebp)
  104116:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10411a:	75 c7                	jne    1040e3 <i2A+0x19>
  10411c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10411f:	c9                   	leave  
  104120:	c3                   	ret    

00104121 <append>:
  104121:	55                   	push   %ebp
  104122:	89 e5                	mov    %esp,%ebp
  104124:	53                   	push   %ebx
  104125:	e8 1b c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10412a:	05 d6 2e 00 00       	add    $0x2ed6,%eax
  10412f:	eb 1a                	jmp    10414b <append+0x2a>
  104131:	8b 55 0c             	mov    0xc(%ebp),%edx
  104134:	8d 42 01             	lea    0x1(%edx),%eax
  104137:	89 45 0c             	mov    %eax,0xc(%ebp)
  10413a:	8b 45 08             	mov    0x8(%ebp),%eax
  10413d:	8b 00                	mov    (%eax),%eax
  10413f:	8d 58 01             	lea    0x1(%eax),%ebx
  104142:	8b 4d 08             	mov    0x8(%ebp),%ecx
  104145:	89 19                	mov    %ebx,(%ecx)
  104147:	8a 12                	mov    (%edx),%dl
  104149:	88 10                	mov    %dl,(%eax)
  10414b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10414e:	8a 00                	mov    (%eax),%al
  104150:	84 c0                	test   %al,%al
  104152:	75 dd                	jne    104131 <append+0x10>
  104154:	90                   	nop
  104155:	5b                   	pop    %ebx
  104156:	5d                   	pop    %ebp
  104157:	c3                   	ret    

00104158 <displayMessage>:
  104158:	55                   	push   %ebp
  104159:	89 e5                	mov    %esp,%ebp
  10415b:	53                   	push   %ebx
  10415c:	83 ec 14             	sub    $0x14,%esp
  10415f:	e8 d1 c6 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  104164:	81 c3 9c 2e 00 00    	add    $0x2e9c,%ebx
  10416a:	8d 83 32 00 00 00    	lea    0x32(%ebx),%eax
  104170:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104173:	ff 75 08             	pushl  0x8(%ebp)
  104176:	8d 45 f4             	lea    -0xc(%ebp),%eax
  104179:	50                   	push   %eax
  10417a:	e8 a2 ff ff ff       	call   104121 <append>
  10417f:	83 c4 08             	add    $0x8,%esp
  104182:	8d 83 6c d5 ff ff    	lea    -0x2a94(%ebx),%eax
  104188:	50                   	push   %eax
  104189:	8d 45 f4             	lea    -0xc(%ebp),%eax
  10418c:	50                   	push   %eax
  10418d:	e8 8f ff ff ff       	call   104121 <append>
  104192:	83 c4 08             	add    $0x8,%esp
  104195:	ff 75 0c             	pushl  0xc(%ebp)
  104198:	e8 2d ff ff ff       	call   1040ca <i2A>
  10419d:	83 c4 04             	add    $0x4,%esp
  1041a0:	50                   	push   %eax
  1041a1:	8d 45 f4             	lea    -0xc(%ebp),%eax
  1041a4:	50                   	push   %eax
  1041a5:	e8 77 ff ff ff       	call   104121 <append>
  1041aa:	83 c4 08             	add    $0x8,%esp
  1041ad:	8d 83 6e d5 ff ff    	lea    -0x2a92(%ebx),%eax
  1041b3:	50                   	push   %eax
  1041b4:	8d 45 f4             	lea    -0xc(%ebp),%eax
  1041b7:	50                   	push   %eax
  1041b8:	e8 64 ff ff ff       	call   104121 <append>
  1041bd:	83 c4 08             	add    $0x8,%esp
  1041c0:	8d 83 20 00 00 00    	lea    0x20(%ebx),%eax
  1041c6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1041c9:	eb 1b                	jmp    1041e6 <displayMessage+0x8e>
  1041cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1041ce:	8a 00                	mov    (%eax),%al
  1041d0:	0f be c0             	movsbl %al,%eax
  1041d3:	83 ec 0c             	sub    $0xc,%esp
  1041d6:	50                   	push   %eax
  1041d7:	e8 37 fb ff ff       	call   103d13 <putChar>
  1041dc:	83 c4 10             	add    $0x10,%esp
  1041df:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1041e2:	40                   	inc    %eax
  1041e3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1041e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1041e9:	8a 00                	mov    (%eax),%al
  1041eb:	84 c0                	test   %al,%al
  1041ed:	75 dc                	jne    1041cb <displayMessage+0x73>
  1041ef:	90                   	nop
  1041f0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1041f3:	c9                   	leave  
  1041f4:	c3                   	ret    

001041f5 <abort>:
  1041f5:	55                   	push   %ebp
  1041f6:	89 e5                	mov    %esp,%ebp
  1041f8:	83 ec 08             	sub    $0x8,%esp
  1041fb:	e8 45 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104200:	05 00 2e 00 00       	add    $0x2e00,%eax
  104205:	e8 af fe ff ff       	call   1040b9 <disableInterrupt>
  10420a:	83 ec 08             	sub    $0x8,%esp
  10420d:	ff 75 0c             	pushl  0xc(%ebp)
  104210:	ff 75 08             	pushl  0x8(%ebp)
  104213:	e8 40 ff ff ff       	call   104158 <displayMessage>
  104218:	83 c4 10             	add    $0x10,%esp
  10421b:	e8 88 fe ff ff       	call   1040a8 <waitForInterrupt>
  104220:	eb f9                	jmp    10421b <abort+0x26>

00104222 <stringChr>:
  104222:	55                   	push   %ebp
  104223:	89 e5                	mov    %esp,%ebp
  104225:	83 ec 14             	sub    $0x14,%esp
  104228:	e8 18 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10422d:	05 d3 2d 00 00       	add    $0x2dd3,%eax
  104232:	8b 45 0c             	mov    0xc(%ebp),%eax
  104235:	88 45 ec             	mov    %al,-0x14(%ebp)
  104238:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10423f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104243:	75 31                	jne    104276 <stringChr+0x54>
  104245:	8b 45 10             	mov    0x10(%ebp),%eax
  104248:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10424e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104253:	eb 3c                	jmp    104291 <stringChr+0x6f>
  104255:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104258:	8b 45 08             	mov    0x8(%ebp),%eax
  10425b:	01 d0                	add    %edx,%eax
  10425d:	8a 00                	mov    (%eax),%al
  10425f:	38 45 ec             	cmp    %al,-0x14(%ebp)
  104262:	75 0f                	jne    104273 <stringChr+0x51>
  104264:	8b 45 10             	mov    0x10(%ebp),%eax
  104267:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10426a:	89 10                	mov    %edx,(%eax)
  10426c:	b8 00 00 00 00       	mov    $0x0,%eax
  104271:	eb 1e                	jmp    104291 <stringChr+0x6f>
  104273:	ff 45 fc             	incl   -0x4(%ebp)
  104276:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104279:	8b 45 08             	mov    0x8(%ebp),%eax
  10427c:	01 d0                	add    %edx,%eax
  10427e:	8a 00                	mov    (%eax),%al
  104280:	84 c0                	test   %al,%al
  104282:	75 d1                	jne    104255 <stringChr+0x33>
  104284:	8b 45 10             	mov    0x10(%ebp),%eax
  104287:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10428a:	89 10                	mov    %edx,(%eax)
  10428c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104291:	c9                   	leave  
  104292:	c3                   	ret    

00104293 <stringChrR>:
  104293:	55                   	push   %ebp
  104294:	89 e5                	mov    %esp,%ebp
  104296:	83 ec 14             	sub    $0x14,%esp
  104299:	e8 a7 c1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10429e:	05 62 2d 00 00       	add    $0x2d62,%eax
  1042a3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1042a6:	88 45 ec             	mov    %al,-0x14(%ebp)
  1042a9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1042b0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1042b4:	75 13                	jne    1042c9 <stringChrR+0x36>
  1042b6:	8b 45 10             	mov    0x10(%ebp),%eax
  1042b9:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1042bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1042c4:	eb 47                	jmp    10430d <stringChrR+0x7a>
  1042c6:	ff 45 fc             	incl   -0x4(%ebp)
  1042c9:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1042cc:	8b 45 08             	mov    0x8(%ebp),%eax
  1042cf:	01 d0                	add    %edx,%eax
  1042d1:	8a 00                	mov    (%eax),%al
  1042d3:	84 c0                	test   %al,%al
  1042d5:	75 ef                	jne    1042c6 <stringChrR+0x33>
  1042d7:	8b 45 10             	mov    0x10(%ebp),%eax
  1042da:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1042dd:	89 10                	mov    %edx,(%eax)
  1042df:	eb 21                	jmp    104302 <stringChrR+0x6f>
  1042e1:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1042e4:	8b 45 08             	mov    0x8(%ebp),%eax
  1042e7:	01 d0                	add    %edx,%eax
  1042e9:	8a 00                	mov    (%eax),%al
  1042eb:	38 45 ec             	cmp    %al,-0x14(%ebp)
  1042ee:	75 0f                	jne    1042ff <stringChrR+0x6c>
  1042f0:	8b 45 10             	mov    0x10(%ebp),%eax
  1042f3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1042f6:	89 10                	mov    %edx,(%eax)
  1042f8:	b8 00 00 00 00       	mov    $0x0,%eax
  1042fd:	eb 0e                	jmp    10430d <stringChrR+0x7a>
  1042ff:	ff 4d fc             	decl   -0x4(%ebp)
  104302:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  104306:	79 d9                	jns    1042e1 <stringChrR+0x4e>
  104308:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10430d:	c9                   	leave  
  10430e:	c3                   	ret    

0010430f <stringLen>:
  10430f:	55                   	push   %ebp
  104310:	89 e5                	mov    %esp,%ebp
  104312:	83 ec 10             	sub    $0x10,%esp
  104315:	e8 2b c1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10431a:	05 e6 2c 00 00       	add    $0x2ce6,%eax
  10431f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104326:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10432a:	75 0a                	jne    104336 <stringLen+0x27>
  10432c:	b8 00 00 00 00       	mov    $0x0,%eax
  104331:	eb 14                	jmp    104347 <stringLen+0x38>
  104333:	ff 45 fc             	incl   -0x4(%ebp)
  104336:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104339:	8b 45 08             	mov    0x8(%ebp),%eax
  10433c:	01 d0                	add    %edx,%eax
  10433e:	8a 00                	mov    (%eax),%al
  104340:	84 c0                	test   %al,%al
  104342:	75 ef                	jne    104333 <stringLen+0x24>
  104344:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104347:	c9                   	leave  
  104348:	c3                   	ret    

00104349 <stringCmp>:
  104349:	55                   	push   %ebp
  10434a:	89 e5                	mov    %esp,%ebp
  10434c:	83 ec 10             	sub    $0x10,%esp
  10434f:	e8 f1 c0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104354:	05 ac 2c 00 00       	add    $0x2cac,%eax
  104359:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104360:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104364:	74 06                	je     10436c <stringCmp+0x23>
  104366:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10436a:	75 3e                	jne    1043aa <stringCmp+0x61>
  10436c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104371:	eb 44                	jmp    1043b7 <stringCmp+0x6e>
  104373:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104376:	8b 45 08             	mov    0x8(%ebp),%eax
  104379:	01 d0                	add    %edx,%eax
  10437b:	8a 10                	mov    (%eax),%dl
  10437d:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  104380:	8b 45 0c             	mov    0xc(%ebp),%eax
  104383:	01 c8                	add    %ecx,%eax
  104385:	8a 00                	mov    (%eax),%al
  104387:	38 c2                	cmp    %al,%dl
  104389:	74 07                	je     104392 <stringCmp+0x49>
  10438b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104390:	eb 25                	jmp    1043b7 <stringCmp+0x6e>
  104392:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104395:	8b 45 08             	mov    0x8(%ebp),%eax
  104398:	01 d0                	add    %edx,%eax
  10439a:	8a 00                	mov    (%eax),%al
  10439c:	84 c0                	test   %al,%al
  10439e:	75 07                	jne    1043a7 <stringCmp+0x5e>
  1043a0:	b8 00 00 00 00       	mov    $0x0,%eax
  1043a5:	eb 10                	jmp    1043b7 <stringCmp+0x6e>
  1043a7:	ff 45 fc             	incl   -0x4(%ebp)
  1043aa:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1043ad:	3b 45 10             	cmp    0x10(%ebp),%eax
  1043b0:	75 c1                	jne    104373 <stringCmp+0x2a>
  1043b2:	b8 00 00 00 00       	mov    $0x0,%eax
  1043b7:	c9                   	leave  
  1043b8:	c3                   	ret    

001043b9 <stringCpy>:
  1043b9:	55                   	push   %ebp
  1043ba:	89 e5                	mov    %esp,%ebp
  1043bc:	83 ec 10             	sub    $0x10,%esp
  1043bf:	e8 81 c0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1043c4:	05 3c 2c 00 00       	add    $0x2c3c,%eax
  1043c9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1043d0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1043d4:	74 06                	je     1043dc <stringCpy+0x23>
  1043d6:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1043da:	75 2c                	jne    104408 <stringCpy+0x4f>
  1043dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1043e1:	eb 40                	jmp    104423 <stringCpy+0x6a>
  1043e3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1043e6:	8b 45 08             	mov    0x8(%ebp),%eax
  1043e9:	01 d0                	add    %edx,%eax
  1043eb:	8a 00                	mov    (%eax),%al
  1043ed:	84 c0                	test   %al,%al
  1043ef:	74 21                	je     104412 <stringCpy+0x59>
  1043f1:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1043f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1043f7:	01 d0                	add    %edx,%eax
  1043f9:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1043fc:	8b 55 0c             	mov    0xc(%ebp),%edx
  1043ff:	01 ca                	add    %ecx,%edx
  104401:	8a 00                	mov    (%eax),%al
  104403:	88 02                	mov    %al,(%edx)
  104405:	ff 45 fc             	incl   -0x4(%ebp)
  104408:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10440b:	3b 45 10             	cmp    0x10(%ebp),%eax
  10440e:	75 d3                	jne    1043e3 <stringCpy+0x2a>
  104410:	eb 01                	jmp    104413 <stringCpy+0x5a>
  104412:	90                   	nop
  104413:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104416:	8b 45 0c             	mov    0xc(%ebp),%eax
  104419:	01 d0                	add    %edx,%eax
  10441b:	c6 00 00             	movb   $0x0,(%eax)
  10441e:	b8 00 00 00 00       	mov    $0x0,%eax
  104423:	c9                   	leave  
  104424:	c3                   	ret    

00104425 <setBuffer>:
  104425:	55                   	push   %ebp
  104426:	89 e5                	mov    %esp,%ebp
  104428:	83 ec 14             	sub    $0x14,%esp
  10442b:	e8 15 c0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104430:	05 d0 2b 00 00       	add    $0x2bd0,%eax
  104435:	8b 45 10             	mov    0x10(%ebp),%eax
  104438:	88 45 ec             	mov    %al,-0x14(%ebp)
  10443b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104442:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104446:	75 07                	jne    10444f <setBuffer+0x2a>
  104448:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10444d:	eb 26                	jmp    104475 <setBuffer+0x50>
  10444f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104456:	eb 10                	jmp    104468 <setBuffer+0x43>
  104458:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10445b:	8b 45 08             	mov    0x8(%ebp),%eax
  10445e:	01 c2                	add    %eax,%edx
  104460:	8a 45 ec             	mov    -0x14(%ebp),%al
  104463:	88 02                	mov    %al,(%edx)
  104465:	ff 45 fc             	incl   -0x4(%ebp)
  104468:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10446b:	3b 45 0c             	cmp    0xc(%ebp),%eax
  10446e:	7c e8                	jl     104458 <setBuffer+0x33>
  104470:	b8 00 00 00 00       	mov    $0x0,%eax
  104475:	c9                   	leave  
  104476:	c3                   	ret    

00104477 <kEntry>:
  104477:	55                   	push   %ebp
  104478:	89 e5                	mov    %esp,%ebp
  10447a:	53                   	push   %ebx
  10447b:	83 ec 04             	sub    $0x4,%esp
  10447e:	e8 b2 c3 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  104483:	81 c3 7d 2b 00 00    	add    $0x2b7d,%ebx
  104489:	e8 e2 f7 ff ff       	call   103c70 <initSerial>
  10448e:	e8 81 c5 ff ff       	call   100a14 <initIdt>
  104493:	e8 ca c3 ff ff       	call   100862 <initIntr>
  104498:	e8 d7 eb ff ff       	call   103074 <initSeg>
  10449d:	e8 1c fa ff ff       	call   103ebe <initVga>
  1044a2:	e8 8a f9 ff ff       	call   103e31 <initTimer>
  1044a7:	e8 be e6 ff ff       	call   102b6a <initKeyTable>
  1044ac:	e8 ae f0 ff ff       	call   10355f <initFS>
  1044b1:	e8 d4 f0 ff ff       	call   10358a <initSem>
  1044b6:	e8 70 f1 ff ff       	call   10362b <initDev>
  1044bb:	e8 4b f5 ff ff       	call   103a0b <initProc>
  1044c0:	90                   	nop
  1044c1:	83 c4 04             	add    $0x4,%esp
  1044c4:	5b                   	pop    %ebx
  1044c5:	5d                   	pop    %ebp
  1044c6:	c3                   	ret    

001044c7 <irqEmpty>:
  1044c7:	6a 00                	push   $0x0
  1044c9:	6a ff                	push   $0xffffffff
  1044cb:	eb 39                	jmp    104506 <asmDoIrq>

001044cd <irqErrorCode>:
  1044cd:	6a ff                	push   $0xffffffff
  1044cf:	eb 35                	jmp    104506 <asmDoIrq>

001044d1 <irqDoubleFault>:
  1044d1:	6a ff                	push   $0xffffffff
  1044d3:	eb 31                	jmp    104506 <asmDoIrq>

001044d5 <irqInvalidTSS>:
  1044d5:	6a ff                	push   $0xffffffff
  1044d7:	eb 2d                	jmp    104506 <asmDoIrq>

001044d9 <irqSegNotPresent>:
  1044d9:	6a ff                	push   $0xffffffff
  1044db:	eb 29                	jmp    104506 <asmDoIrq>

001044dd <irqStackSegFault>:
  1044dd:	6a ff                	push   $0xffffffff
  1044df:	eb 25                	jmp    104506 <asmDoIrq>

001044e1 <irqGProtectFault>:
  1044e1:	6a 0d                	push   $0xd
  1044e3:	eb 21                	jmp    104506 <asmDoIrq>

001044e5 <irqPageFault>:
  1044e5:	6a ff                	push   $0xffffffff
  1044e7:	eb 1d                	jmp    104506 <asmDoIrq>

001044e9 <irqAlignCheck>:
  1044e9:	6a ff                	push   $0xffffffff
  1044eb:	eb 19                	jmp    104506 <asmDoIrq>

001044ed <irqSecException>:
  1044ed:	6a ff                	push   $0xffffffff
  1044ef:	eb 15                	jmp    104506 <asmDoIrq>

001044f1 <irqTimer>:
  1044f1:	6a 00                	push   $0x0
  1044f3:	6a 20                	push   $0x20
  1044f5:	eb 0f                	jmp    104506 <asmDoIrq>

001044f7 <irqKeyboard>:
  1044f7:	6a 00                	push   $0x0
  1044f9:	6a 21                	push   $0x21
  1044fb:	eb 09                	jmp    104506 <asmDoIrq>

001044fd <irqSyscall>:
  1044fd:	6a 00                	push   $0x0
  1044ff:	68 80 00 00 00       	push   $0x80
  104504:	eb 00                	jmp    104506 <asmDoIrq>

00104506 <asmDoIrq>:
  104506:	60                   	pusha  
  104507:	1e                   	push   %ds
  104508:	06                   	push   %es
  104509:	0f a0                	push   %fs
  10450b:	0f a8                	push   %gs
  10450d:	54                   	push   %esp
  10450e:	e8 f0 c6 ff ff       	call   100c03 <irqHandle>
  104513:	83 c4 04             	add    $0x4,%esp
  104516:	0f a9                	pop    %gs
  104518:	0f a1                	pop    %fs
  10451a:	07                   	pop    %es
  10451b:	1f                   	pop    %ds
  10451c:	61                   	popa   
  10451d:	83 c4 04             	add    $0x4,%esp
  104520:	83 c4 04             	add    $0x4,%esp
  104523:	cf                   	iret   
