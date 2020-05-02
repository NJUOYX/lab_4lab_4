
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
  100637:	e8 70 3f 00 00       	call   1045ac <stringChr>
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
  10069b:	e8 0c 3f 00 00       	call   1045ac <stringChr>
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
  100764:	e8 6a 3f 00 00       	call   1046d3 <stringCmp>
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
  100a2f:	c7 c0 51 48 10 00    	mov    $0x104851,%eax
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
  100a63:	c7 c0 5b 48 10 00    	mov    $0x10485b,%eax
  100a69:	89 c2                	mov    %eax,%edx
  100a6b:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100a71:	8d 40 40             	lea    0x40(%eax),%eax
  100a74:	6a 00                	push   $0x0
  100a76:	52                   	push   %edx
  100a77:	6a 01                	push   $0x1
  100a79:	50                   	push   %eax
  100a7a:	e8 19 ff ff ff       	call   100998 <setTrap>
  100a7f:	83 c4 10             	add    $0x10,%esp
  100a82:	c7 c0 5f 48 10 00    	mov    $0x10485f,%eax
  100a88:	89 c2                	mov    %eax,%edx
  100a8a:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100a90:	8d 40 50             	lea    0x50(%eax),%eax
  100a93:	6a 00                	push   $0x0
  100a95:	52                   	push   %edx
  100a96:	6a 01                	push   $0x1
  100a98:	50                   	push   %eax
  100a99:	e8 fa fe ff ff       	call   100998 <setTrap>
  100a9e:	83 c4 10             	add    $0x10,%esp
  100aa1:	c7 c0 63 48 10 00    	mov    $0x104863,%eax
  100aa7:	89 c2                	mov    %eax,%edx
  100aa9:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100aaf:	8d 40 58             	lea    0x58(%eax),%eax
  100ab2:	6a 00                	push   $0x0
  100ab4:	52                   	push   %edx
  100ab5:	6a 01                	push   $0x1
  100ab7:	50                   	push   %eax
  100ab8:	e8 db fe ff ff       	call   100998 <setTrap>
  100abd:	83 c4 10             	add    $0x10,%esp
  100ac0:	c7 c0 67 48 10 00    	mov    $0x104867,%eax
  100ac6:	89 c2                	mov    %eax,%edx
  100ac8:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100ace:	8d 40 60             	lea    0x60(%eax),%eax
  100ad1:	6a 00                	push   $0x0
  100ad3:	52                   	push   %edx
  100ad4:	6a 01                	push   $0x1
  100ad6:	50                   	push   %eax
  100ad7:	e8 bc fe ff ff       	call   100998 <setTrap>
  100adc:	83 c4 10             	add    $0x10,%esp
  100adf:	c7 c0 6b 48 10 00    	mov    $0x10486b,%eax
  100ae5:	89 c2                	mov    %eax,%edx
  100ae7:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100aed:	8d 40 68             	lea    0x68(%eax),%eax
  100af0:	6a 00                	push   $0x0
  100af2:	52                   	push   %edx
  100af3:	6a 01                	push   $0x1
  100af5:	50                   	push   %eax
  100af6:	e8 9d fe ff ff       	call   100998 <setTrap>
  100afb:	83 c4 10             	add    $0x10,%esp
  100afe:	c7 c0 6f 48 10 00    	mov    $0x10486f,%eax
  100b04:	89 c2                	mov    %eax,%edx
  100b06:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b0c:	8d 40 70             	lea    0x70(%eax),%eax
  100b0f:	6a 00                	push   $0x0
  100b11:	52                   	push   %edx
  100b12:	6a 01                	push   $0x1
  100b14:	50                   	push   %eax
  100b15:	e8 7e fe ff ff       	call   100998 <setTrap>
  100b1a:	83 c4 10             	add    $0x10,%esp
  100b1d:	c7 c0 73 48 10 00    	mov    $0x104873,%eax
  100b23:	89 c2                	mov    %eax,%edx
  100b25:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b2b:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  100b31:	6a 00                	push   $0x0
  100b33:	52                   	push   %edx
  100b34:	6a 01                	push   $0x1
  100b36:	50                   	push   %eax
  100b37:	e8 5c fe ff ff       	call   100998 <setTrap>
  100b3c:	83 c4 10             	add    $0x10,%esp
  100b3f:	c7 c0 77 48 10 00    	mov    $0x104877,%eax
  100b45:	89 c2                	mov    %eax,%edx
  100b47:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b4d:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  100b53:	6a 00                	push   $0x0
  100b55:	52                   	push   %edx
  100b56:	6a 01                	push   $0x1
  100b58:	50                   	push   %eax
  100b59:	e8 3a fe ff ff       	call   100998 <setTrap>
  100b5e:	83 c4 10             	add    $0x10,%esp
  100b61:	c7 c0 7b 48 10 00    	mov    $0x10487b,%eax
  100b67:	89 c2                	mov    %eax,%edx
  100b69:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b6f:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  100b75:	6a 00                	push   $0x0
  100b77:	52                   	push   %edx
  100b78:	6a 01                	push   $0x1
  100b7a:	50                   	push   %eax
  100b7b:	e8 99 fd ff ff       	call   100919 <setIntr>
  100b80:	83 c4 10             	add    $0x10,%esp
  100b83:	c7 c0 81 48 10 00    	mov    $0x104881,%eax
  100b89:	89 c2                	mov    %eax,%edx
  100b8b:	c7 c0 40 72 10 00    	mov    $0x107240,%eax
  100b91:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  100b97:	6a 00                	push   $0x0
  100b99:	52                   	push   %edx
  100b9a:	6a 01                	push   $0x1
  100b9c:	50                   	push   %eax
  100b9d:	e8 77 fd ff ff       	call   100919 <setIntr>
  100ba2:	83 c4 10             	add    $0x10,%esp
  100ba5:	c7 c0 87 48 10 00    	mov    $0x104887,%eax
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
  100d37:	e8 32 21 00 00       	call   102e6e <GProtectFaultHandle>
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
  100d76:	8d 83 b0 d8 ff ff    	lea    -0x2750(%ebx),%eax
  100d7c:	50                   	push   %eax
  100d7d:	e8 fd 37 00 00       	call   10457f <abort>
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
  100def:	8b 94 02 c4 d8 ff ff 	mov    -0x273c(%edx,%eax,1),%edx
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
  100e70:	e8 a6 1f 00 00       	call   102e1b <syscallGetPid>
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
  100e86:	e8 17 20 00 00       	call   102ea2 <__x86.get_pc_thunk.cx>
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
  1013df:	e8 2d 1e 00 00       	call   103211 <getKeyCode>
  1013e4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1013e7:	83 ec 0c             	sub    $0xc,%esp
  1013ea:	ff 75 f4             	pushl  -0xc(%ebp)
  1013ed:	e8 c3 1e 00 00       	call   1032b5 <getChar>
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
  1015eb:	e8 64 2d 00 00       	call   104354 <scrollScreen>
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
  101698:	e8 b7 2c 00 00       	call   104354 <scrollScreen>
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
  1016c1:	e8 1b 2c 00 00       	call   1042e1 <updateCursor>
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
  10177f:	e8 d0 2b 00 00       	call   104354 <scrollScreen>
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
  10182b:	e8 24 2b 00 00       	call   104354 <scrollScreen>
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
  101854:	e8 88 2a 00 00       	call   1042e1 <updateCursor>
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
  101869:	e8 30 16 00 00       	call   102e9e <__x86.get_pc_thunk.dx>
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
  101c38:	e8 61 12 00 00       	call   102e9e <__x86.get_pc_thunk.dx>
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
  102820:	e8 79 06 00 00       	call   102e9e <__x86.get_pc_thunk.dx>
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
  1028c3:	e8 8e 11 00 00       	call   103a56 <loadElf>
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
  1028f6:	e8 a3 05 00 00       	call   102e9e <__x86.get_pc_thunk.dx>
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
  102a25:	e8 94 00 00 00       	call   102abe <syscallSemWait>
  102a2a:	83 c4 10             	add    $0x10,%esp
  102a2d:	eb 1f                	jmp    102a4e <syscallSem+0x6b>
  102a2f:	83 ec 0c             	sub    $0xc,%esp
  102a32:	ff 75 08             	pushl  0x8(%ebp)
  102a35:	e8 c9 02 00 00       	call   102d03 <syscallSemPost>
  102a3a:	83 c4 10             	add    $0x10,%esp
  102a3d:	eb 0f                	jmp    102a4e <syscallSem+0x6b>
  102a3f:	83 ec 0c             	sub    $0xc,%esp
  102a42:	ff 75 08             	pushl  0x8(%ebp)
  102a45:	e8 a1 03 00 00       	call   102deb <syscallSemDestroy>
  102a4a:	83 c4 10             	add    $0x10,%esp
  102a4d:	90                   	nop
  102a4e:	90                   	nop
  102a4f:	c9                   	leave  
  102a50:	c3                   	ret    

00102a51 <syscallSemInit>:
  102a51:	55                   	push   %ebp
  102a52:	89 e5                	mov    %esp,%ebp
  102a54:	83 ec 10             	sub    $0x10,%esp
  102a57:	e8 e9 d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102a5c:	05 a4 45 00 00       	add    $0x45a4,%eax
  102a61:	8b 55 08             	mov    0x8(%ebp),%edx
  102a64:	8b 52 24             	mov    0x24(%edx),%edx
  102a67:	89 55 f8             	mov    %edx,-0x8(%ebp)
  102a6a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102a71:	eb 38                	jmp    102aab <syscallSemInit+0x5a>
  102a73:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102a79:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  102a7c:	c1 e1 04             	shl    $0x4,%ecx
  102a7f:	01 ca                	add    %ecx,%edx
  102a81:	8b 12                	mov    (%edx),%edx
  102a83:	85 d2                	test   %edx,%edx
  102a85:	75 21                	jne    102aa8 <syscallSemInit+0x57>
  102a87:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  102a8a:	8b 55 08             	mov    0x8(%ebp),%edx
  102a8d:	89 4a 2c             	mov    %ecx,0x2c(%edx)
  102a90:	c7 c0 c0 8e 10 00    	mov    $0x108ec0,%eax
  102a96:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102a99:	c1 e2 04             	shl    $0x4,%edx
  102a9c:	01 d0                	add    %edx,%eax
  102a9e:	8d 50 04             	lea    0x4(%eax),%edx
  102aa1:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102aa4:	89 02                	mov    %eax,(%edx)
  102aa6:	eb 14                	jmp    102abc <syscallSemInit+0x6b>
  102aa8:	ff 45 fc             	incl   -0x4(%ebp)
  102aab:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  102aaf:	7e c2                	jle    102a73 <syscallSemInit+0x22>
  102ab1:	8b 45 08             	mov    0x8(%ebp),%eax
  102ab4:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  102abb:	90                   	nop
  102abc:	c9                   	leave  
  102abd:	c3                   	ret    

00102abe <syscallSemWait>:
  102abe:	55                   	push   %ebp
  102abf:	89 e5                	mov    %esp,%ebp
  102ac1:	56                   	push   %esi
  102ac2:	53                   	push   %ebx
  102ac3:	83 ec 10             	sub    $0x10,%esp
  102ac6:	e8 7a d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102acb:	05 35 45 00 00       	add    $0x4535,%eax
  102ad0:	8b 55 08             	mov    0x8(%ebp),%edx
  102ad3:	8b 52 24             	mov    0x24(%edx),%edx
  102ad6:	89 55 f4             	mov    %edx,-0xc(%ebp)
  102ad9:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102adf:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102ae2:	c1 e1 04             	shl    $0x4,%ecx
  102ae5:	01 ca                	add    %ecx,%edx
  102ae7:	83 c2 04             	add    $0x4,%edx
  102aea:	8b 12                	mov    (%edx),%edx
  102aec:	8d 4a ff             	lea    -0x1(%edx),%ecx
  102aef:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102af5:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  102af8:	c1 e3 04             	shl    $0x4,%ebx
  102afb:	01 da                	add    %ebx,%edx
  102afd:	83 c2 04             	add    $0x4,%edx
  102b00:	89 0a                	mov    %ecx,(%edx)
  102b02:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102b08:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102b0b:	c1 e1 04             	shl    $0x4,%ecx
  102b0e:	01 ca                	add    %ecx,%edx
  102b10:	83 c2 04             	add    $0x4,%edx
  102b13:	8b 12                	mov    (%edx),%edx
  102b15:	85 d2                	test   %edx,%edx
  102b17:	0f 89 de 01 00 00    	jns    102cfb <syscallSemWait+0x23d>
  102b1d:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102b23:	8b 1a                	mov    (%edx),%ebx
  102b25:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102b2b:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102b2e:	c1 e1 04             	shl    $0x4,%ecx
  102b31:	01 ca                	add    %ecx,%edx
  102b33:	83 c2 08             	add    $0x8,%edx
  102b36:	8b 0a                	mov    (%edx),%ecx
  102b38:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102b3e:	89 da                	mov    %ebx,%edx
  102b40:	01 d2                	add    %edx,%edx
  102b42:	01 da                	add    %ebx,%edx
  102b44:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  102b4b:	01 da                	add    %ebx,%edx
  102b4d:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  102b54:	01 da                	add    %ebx,%edx
  102b56:	89 d3                	mov    %edx,%ebx
  102b58:	c1 e3 04             	shl    $0x4,%ebx
  102b5b:	01 da                	add    %ebx,%edx
  102b5d:	c1 e2 02             	shl    $0x2,%edx
  102b60:	01 f2                	add    %esi,%edx
  102b62:	81 c2 84 40 00 00    	add    $0x4084,%edx
  102b68:	89 0a                	mov    %ecx,(%edx)
  102b6a:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102b70:	8b 0a                	mov    (%edx),%ecx
  102b72:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102b75:	89 d3                	mov    %edx,%ebx
  102b77:	c1 e3 04             	shl    $0x4,%ebx
  102b7a:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102b80:	01 da                	add    %ebx,%edx
  102b82:	8d 5a 08             	lea    0x8(%edx),%ebx
  102b85:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102b8b:	89 ca                	mov    %ecx,%edx
  102b8d:	01 d2                	add    %edx,%edx
  102b8f:	01 ca                	add    %ecx,%edx
  102b91:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102b98:	01 ca                	add    %ecx,%edx
  102b9a:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102ba1:	01 ca                	add    %ecx,%edx
  102ba3:	89 d1                	mov    %edx,%ecx
  102ba5:	c1 e1 04             	shl    $0x4,%ecx
  102ba8:	01 ca                	add    %ecx,%edx
  102baa:	c1 e2 02             	shl    $0x2,%edx
  102bad:	01 f2                	add    %esi,%edx
  102baf:	81 c2 88 40 00 00    	add    $0x4088,%edx
  102bb5:	89 1a                	mov    %ebx,(%edx)
  102bb7:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102bbd:	8b 0a                	mov    (%edx),%ecx
  102bbf:	89 ca                	mov    %ecx,%edx
  102bc1:	01 d2                	add    %edx,%edx
  102bc3:	01 ca                	add    %ecx,%edx
  102bc5:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102bcc:	01 ca                	add    %ecx,%edx
  102bce:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102bd5:	01 ca                	add    %ecx,%edx
  102bd7:	89 d1                	mov    %edx,%ecx
  102bd9:	c1 e1 04             	shl    $0x4,%ecx
  102bdc:	01 ca                	add    %ecx,%edx
  102bde:	c1 e2 02             	shl    $0x2,%edx
  102be1:	8d 8a 80 40 00 00    	lea    0x4080(%edx),%ecx
  102be7:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  102bed:	01 ca                	add    %ecx,%edx
  102bef:	8d 4a 04             	lea    0x4(%edx),%ecx
  102bf2:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102bf8:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  102bfb:	c1 e3 04             	shl    $0x4,%ebx
  102bfe:	01 da                	add    %ebx,%edx
  102c00:	83 c2 08             	add    $0x8,%edx
  102c03:	89 0a                	mov    %ecx,(%edx)
  102c05:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102c0b:	8b 1a                	mov    (%edx),%ebx
  102c0d:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102c13:	8b 0a                	mov    (%edx),%ecx
  102c15:	c7 c6 60 94 10 00    	mov    $0x109460,%esi
  102c1b:	89 ca                	mov    %ecx,%edx
  102c1d:	01 d2                	add    %edx,%edx
  102c1f:	01 ca                	add    %ecx,%edx
  102c21:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102c28:	01 ca                	add    %ecx,%edx
  102c2a:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102c31:	01 ca                	add    %ecx,%edx
  102c33:	89 d1                	mov    %edx,%ecx
  102c35:	c1 e1 04             	shl    $0x4,%ecx
  102c38:	01 ca                	add    %ecx,%edx
  102c3a:	c1 e2 02             	shl    $0x2,%edx
  102c3d:	01 f2                	add    %esi,%edx
  102c3f:	81 c2 84 40 00 00    	add    $0x4084,%edx
  102c45:	8b 0a                	mov    (%edx),%ecx
  102c47:	89 da                	mov    %ebx,%edx
  102c49:	01 d2                	add    %edx,%edx
  102c4b:	01 da                	add    %ebx,%edx
  102c4d:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  102c54:	01 da                	add    %ebx,%edx
  102c56:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  102c5d:	01 da                	add    %ebx,%edx
  102c5f:	89 d3                	mov    %edx,%ebx
  102c61:	c1 e3 04             	shl    $0x4,%ebx
  102c64:	01 da                	add    %ebx,%edx
  102c66:	c1 e2 02             	shl    $0x2,%edx
  102c69:	8d 9a 80 40 00 00    	lea    0x4080(%edx),%ebx
  102c6f:	c7 c2 60 94 10 00    	mov    $0x109460,%edx
  102c75:	01 da                	add    %ebx,%edx
  102c77:	83 c2 04             	add    $0x4,%edx
  102c7a:	89 51 04             	mov    %edx,0x4(%ecx)
  102c7d:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102c83:	8b 0a                	mov    (%edx),%ecx
  102c85:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  102c8b:	89 ca                	mov    %ecx,%edx
  102c8d:	01 d2                	add    %edx,%edx
  102c8f:	01 ca                	add    %ecx,%edx
  102c91:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102c98:	01 ca                	add    %ecx,%edx
  102c9a:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  102ca1:	01 ca                	add    %ecx,%edx
  102ca3:	89 d1                	mov    %edx,%ecx
  102ca5:	c1 e1 04             	shl    $0x4,%ecx
  102ca8:	01 ca                	add    %ecx,%edx
  102caa:	c1 e2 02             	shl    $0x2,%edx
  102cad:	01 da                	add    %ebx,%edx
  102caf:	81 c2 54 40 00 00    	add    $0x4054,%edx
  102cb5:	c7 02 02 00 00 00    	movl   $0x2,(%edx)
  102cbb:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102cc1:	8b 12                	mov    (%edx),%edx
  102cc3:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  102cc9:	89 d0                	mov    %edx,%eax
  102ccb:	01 c0                	add    %eax,%eax
  102ccd:	01 d0                	add    %edx,%eax
  102ccf:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102cd6:	01 d0                	add    %edx,%eax
  102cd8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102cdf:	01 d0                	add    %edx,%eax
  102ce1:	89 c2                	mov    %eax,%edx
  102ce3:	c1 e2 04             	shl    $0x4,%edx
  102ce6:	01 d0                	add    %edx,%eax
  102ce8:	c1 e0 02             	shl    $0x2,%eax
  102ceb:	01 c8                	add    %ecx,%eax
  102ced:	05 5c 40 00 00       	add    $0x405c,%eax
  102cf2:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  102cf8:	cd 20                	int    $0x20
  102cfa:	90                   	nop
  102cfb:	90                   	nop
  102cfc:	83 c4 10             	add    $0x10,%esp
  102cff:	5b                   	pop    %ebx
  102d00:	5e                   	pop    %esi
  102d01:	5d                   	pop    %ebp
  102d02:	c3                   	ret    

00102d03 <syscallSemPost>:
  102d03:	55                   	push   %ebp
  102d04:	89 e5                	mov    %esp,%ebp
  102d06:	53                   	push   %ebx
  102d07:	83 ec 10             	sub    $0x10,%esp
  102d0a:	e8 36 d7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102d0f:	05 f1 42 00 00       	add    $0x42f1,%eax
  102d14:	8b 55 08             	mov    0x8(%ebp),%edx
  102d17:	8b 52 24             	mov    0x24(%edx),%edx
  102d1a:	89 55 f8             	mov    %edx,-0x8(%ebp)
  102d1d:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102d23:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102d26:	c1 e1 04             	shl    $0x4,%ecx
  102d29:	01 ca                	add    %ecx,%edx
  102d2b:	83 c2 04             	add    $0x4,%edx
  102d2e:	8b 12                	mov    (%edx),%edx
  102d30:	8d 4a 01             	lea    0x1(%edx),%ecx
  102d33:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102d39:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  102d3c:	c1 e3 04             	shl    $0x4,%ebx
  102d3f:	01 da                	add    %ebx,%edx
  102d41:	83 c2 04             	add    $0x4,%edx
  102d44:	89 0a                	mov    %ecx,(%edx)
  102d46:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102d4c:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102d4f:	c1 e1 04             	shl    $0x4,%ecx
  102d52:	01 ca                	add    %ecx,%edx
  102d54:	83 c2 04             	add    $0x4,%edx
  102d57:	8b 12                	mov    (%edx),%edx
  102d59:	85 d2                	test   %edx,%edx
  102d5b:	0f 8f 83 00 00 00    	jg     102de4 <syscallSemPost+0xe1>
  102d61:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102d67:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102d6a:	c1 e1 04             	shl    $0x4,%ecx
  102d6d:	01 ca                	add    %ecx,%edx
  102d6f:	83 c2 0c             	add    $0xc,%edx
  102d72:	8b 12                	mov    (%edx),%edx
  102d74:	81 ea 84 40 00 00    	sub    $0x4084,%edx
  102d7a:	89 90 28 01 00 00    	mov    %edx,0x128(%eax)
  102d80:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102d86:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102d89:	c1 e1 04             	shl    $0x4,%ecx
  102d8c:	01 ca                	add    %ecx,%edx
  102d8e:	83 c2 0c             	add    $0xc,%edx
  102d91:	8b 12                	mov    (%edx),%edx
  102d93:	8b 52 04             	mov    0x4(%edx),%edx
  102d96:	c7 c1 c0 8e 10 00    	mov    $0x108ec0,%ecx
  102d9c:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  102d9f:	c1 e3 04             	shl    $0x4,%ebx
  102da2:	01 d9                	add    %ebx,%ecx
  102da4:	83 c1 0c             	add    $0xc,%ecx
  102da7:	89 11                	mov    %edx,(%ecx)
  102da9:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  102daf:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102db2:	c1 e1 04             	shl    $0x4,%ecx
  102db5:	01 ca                	add    %ecx,%edx
  102db7:	83 c2 0c             	add    $0xc,%edx
  102dba:	8b 12                	mov    (%edx),%edx
  102dbc:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  102dbf:	89 cb                	mov    %ecx,%ebx
  102dc1:	c1 e3 04             	shl    $0x4,%ebx
  102dc4:	c7 c1 c0 8e 10 00    	mov    $0x108ec0,%ecx
  102dca:	01 d9                	add    %ebx,%ecx
  102dcc:	83 c1 08             	add    $0x8,%ecx
  102dcf:	89 0a                	mov    %ecx,(%edx)
  102dd1:	8b 80 28 01 00 00    	mov    0x128(%eax),%eax
  102dd7:	c7 80 54 40 00 00 00 	movl   $0x0,0x4054(%eax)
  102dde:	00 00 00 
  102de1:	cd 20                	int    $0x20
  102de3:	90                   	nop
  102de4:	90                   	nop
  102de5:	83 c4 10             	add    $0x10,%esp
  102de8:	5b                   	pop    %ebx
  102de9:	5d                   	pop    %ebp
  102dea:	c3                   	ret    

00102deb <syscallSemDestroy>:
  102deb:	55                   	push   %ebp
  102dec:	89 e5                	mov    %esp,%ebp
  102dee:	83 ec 10             	sub    $0x10,%esp
  102df1:	e8 4f d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102df6:	05 0a 42 00 00       	add    $0x420a,%eax
  102dfb:	8b 55 08             	mov    0x8(%ebp),%edx
  102dfe:	8b 52 24             	mov    0x24(%edx),%edx
  102e01:	89 55 fc             	mov    %edx,-0x4(%ebp)
  102e04:	c7 c0 c0 8e 10 00    	mov    $0x108ec0,%eax
  102e0a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102e0d:	c1 e2 04             	shl    $0x4,%edx
  102e10:	01 d0                	add    %edx,%eax
  102e12:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102e18:	90                   	nop
  102e19:	c9                   	leave  
  102e1a:	c3                   	ret    

00102e1b <syscallGetPid>:
  102e1b:	55                   	push   %ebp
  102e1c:	89 e5                	mov    %esp,%ebp
  102e1e:	53                   	push   %ebx
  102e1f:	e8 21 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e24:	05 dc 41 00 00       	add    $0x41dc,%eax
  102e29:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102e2f:	8b 0a                	mov    (%edx),%ecx
  102e31:	c7 c2 44 90 10 00    	mov    $0x109044,%edx
  102e37:	8b 12                	mov    (%edx),%edx
  102e39:	c7 c3 60 94 10 00    	mov    $0x109460,%ebx
  102e3f:	89 d0                	mov    %edx,%eax
  102e41:	01 c0                	add    %eax,%eax
  102e43:	01 d0                	add    %edx,%eax
  102e45:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102e4c:	01 d0                	add    %edx,%eax
  102e4e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102e55:	01 d0                	add    %edx,%eax
  102e57:	89 c2                	mov    %eax,%edx
  102e59:	c1 e2 04             	shl    $0x4,%edx
  102e5c:	01 d0                	add    %edx,%eax
  102e5e:	c1 e0 02             	shl    $0x2,%eax
  102e61:	01 d8                	add    %ebx,%eax
  102e63:	05 2c 40 00 00       	add    $0x402c,%eax
  102e68:	89 08                	mov    %ecx,(%eax)
  102e6a:	90                   	nop
  102e6b:	5b                   	pop    %ebx
  102e6c:	5d                   	pop    %ebp
  102e6d:	c3                   	ret    

00102e6e <GProtectFaultHandle>:
  102e6e:	55                   	push   %ebp
  102e6f:	89 e5                	mov    %esp,%ebp
  102e71:	53                   	push   %ebx
  102e72:	83 ec 04             	sub    $0x4,%esp
  102e75:	e8 cb d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e7a:	05 86 41 00 00       	add    $0x4186,%eax
  102e7f:	83 ec 08             	sub    $0x8,%esp
  102e82:	68 81 02 00 00       	push   $0x281
  102e87:	8d 90 b0 d8 ff ff    	lea    -0x2750(%eax),%edx
  102e8d:	52                   	push   %edx
  102e8e:	89 c3                	mov    %eax,%ebx
  102e90:	e8 ea 16 00 00       	call   10457f <abort>
  102e95:	83 c4 10             	add    $0x10,%esp
  102e98:	90                   	nop
  102e99:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102e9c:	c9                   	leave  
  102e9d:	c3                   	ret    

00102e9e <__x86.get_pc_thunk.dx>:
  102e9e:	8b 14 24             	mov    (%esp),%edx
  102ea1:	c3                   	ret    

00102ea2 <__x86.get_pc_thunk.cx>:
  102ea2:	8b 0c 24             	mov    (%esp),%ecx
  102ea5:	c3                   	ret    

00102ea6 <inByte>:
  102ea6:	55                   	push   %ebp
  102ea7:	89 e5                	mov    %esp,%ebp
  102ea9:	83 ec 14             	sub    $0x14,%esp
  102eac:	e8 94 d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102eb1:	05 4f 41 00 00       	add    $0x414f,%eax
  102eb6:	8b 45 08             	mov    0x8(%ebp),%eax
  102eb9:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  102ebd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102ec0:	89 c2                	mov    %eax,%edx
  102ec2:	ec                   	in     (%dx),%al
  102ec3:	88 45 ff             	mov    %al,-0x1(%ebp)
  102ec6:	8a 45 ff             	mov    -0x1(%ebp),%al
  102ec9:	c9                   	leave  
  102eca:	c3                   	ret    

00102ecb <outByte>:
  102ecb:	55                   	push   %ebp
  102ecc:	89 e5                	mov    %esp,%ebp
  102ece:	83 ec 08             	sub    $0x8,%esp
  102ed1:	e8 6f d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102ed6:	05 2a 41 00 00       	add    $0x412a,%eax
  102edb:	8b 45 08             	mov    0x8(%ebp),%eax
  102ede:	8b 55 0c             	mov    0xc(%ebp),%edx
  102ee1:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  102ee5:	88 d0                	mov    %dl,%al
  102ee7:	88 45 f8             	mov    %al,-0x8(%ebp)
  102eea:	8a 45 f8             	mov    -0x8(%ebp),%al
  102eed:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102ef0:	ee                   	out    %al,(%dx)
  102ef1:	90                   	nop
  102ef2:	c9                   	leave  
  102ef3:	c3                   	ret    

00102ef4 <initKeyTable>:
  102ef4:	55                   	push   %ebp
  102ef5:	89 e5                	mov    %esp,%ebp
  102ef7:	83 ec 10             	sub    $0x10,%esp
  102efa:	e8 46 d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102eff:	05 01 41 00 00       	add    $0x4101,%eax
  102f04:	c7 c2 60 8e 10 00    	mov    $0x108e60,%edx
  102f0a:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102f10:	c7 c2 40 8a 10 00    	mov    $0x108a40,%edx
  102f16:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102f1c:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  102f23:	00 00 00 
  102f26:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102f2c:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102f32:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102f39:	eb 1f                	jmp    102f5a <initKeyTable+0x66>
  102f3b:	8d 88 40 01 00 00    	lea    0x140(%eax),%ecx
  102f41:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102f44:	01 ca                	add    %ecx,%edx
  102f46:	c6 02 00             	movb   $0x0,(%edx)
  102f49:	8d 88 a0 01 00 00    	lea    0x1a0(%eax),%ecx
  102f4f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102f52:	01 ca                	add    %ecx,%edx
  102f54:	c6 02 00             	movb   $0x0,(%edx)
  102f57:	ff 45 fc             	incl   -0x4(%ebp)
  102f5a:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  102f5e:	7e db                	jle    102f3b <initKeyTable+0x47>
  102f60:	c6 80 42 01 00 00 31 	movb   $0x31,0x142(%eax)
  102f67:	c6 80 a2 01 00 00 21 	movb   $0x21,0x1a2(%eax)
  102f6e:	c6 80 43 01 00 00 32 	movb   $0x32,0x143(%eax)
  102f75:	c6 80 a3 01 00 00 40 	movb   $0x40,0x1a3(%eax)
  102f7c:	c6 80 44 01 00 00 33 	movb   $0x33,0x144(%eax)
  102f83:	c6 80 a4 01 00 00 23 	movb   $0x23,0x1a4(%eax)
  102f8a:	c6 80 45 01 00 00 34 	movb   $0x34,0x145(%eax)
  102f91:	c6 80 a5 01 00 00 24 	movb   $0x24,0x1a5(%eax)
  102f98:	c6 80 46 01 00 00 35 	movb   $0x35,0x146(%eax)
  102f9f:	c6 80 a6 01 00 00 25 	movb   $0x25,0x1a6(%eax)
  102fa6:	c6 80 47 01 00 00 36 	movb   $0x36,0x147(%eax)
  102fad:	c6 80 a7 01 00 00 5e 	movb   $0x5e,0x1a7(%eax)
  102fb4:	c6 80 48 01 00 00 37 	movb   $0x37,0x148(%eax)
  102fbb:	c6 80 a8 01 00 00 26 	movb   $0x26,0x1a8(%eax)
  102fc2:	c6 80 49 01 00 00 38 	movb   $0x38,0x149(%eax)
  102fc9:	c6 80 a9 01 00 00 2a 	movb   $0x2a,0x1a9(%eax)
  102fd0:	c6 80 4a 01 00 00 39 	movb   $0x39,0x14a(%eax)
  102fd7:	c6 80 aa 01 00 00 28 	movb   $0x28,0x1aa(%eax)
  102fde:	c6 80 4b 01 00 00 30 	movb   $0x30,0x14b(%eax)
  102fe5:	c6 80 ab 01 00 00 29 	movb   $0x29,0x1ab(%eax)
  102fec:	c6 80 5e 01 00 00 61 	movb   $0x61,0x15e(%eax)
  102ff3:	c6 80 be 01 00 00 41 	movb   $0x41,0x1be(%eax)
  102ffa:	c6 80 70 01 00 00 62 	movb   $0x62,0x170(%eax)
  103001:	c6 80 d0 01 00 00 42 	movb   $0x42,0x1d0(%eax)
  103008:	c6 80 6e 01 00 00 63 	movb   $0x63,0x16e(%eax)
  10300f:	c6 80 ce 01 00 00 43 	movb   $0x43,0x1ce(%eax)
  103016:	c6 80 60 01 00 00 64 	movb   $0x64,0x160(%eax)
  10301d:	c6 80 c0 01 00 00 44 	movb   $0x44,0x1c0(%eax)
  103024:	c6 80 52 01 00 00 65 	movb   $0x65,0x152(%eax)
  10302b:	c6 80 b2 01 00 00 45 	movb   $0x45,0x1b2(%eax)
  103032:	c6 80 61 01 00 00 66 	movb   $0x66,0x161(%eax)
  103039:	c6 80 c1 01 00 00 46 	movb   $0x46,0x1c1(%eax)
  103040:	c6 80 62 01 00 00 67 	movb   $0x67,0x162(%eax)
  103047:	c6 80 c2 01 00 00 47 	movb   $0x47,0x1c2(%eax)
  10304e:	c6 80 63 01 00 00 68 	movb   $0x68,0x163(%eax)
  103055:	c6 80 c3 01 00 00 48 	movb   $0x48,0x1c3(%eax)
  10305c:	c6 80 57 01 00 00 69 	movb   $0x69,0x157(%eax)
  103063:	c6 80 b7 01 00 00 49 	movb   $0x49,0x1b7(%eax)
  10306a:	c6 80 64 01 00 00 6a 	movb   $0x6a,0x164(%eax)
  103071:	c6 80 c4 01 00 00 4a 	movb   $0x4a,0x1c4(%eax)
  103078:	c6 80 65 01 00 00 6b 	movb   $0x6b,0x165(%eax)
  10307f:	c6 80 c5 01 00 00 4b 	movb   $0x4b,0x1c5(%eax)
  103086:	c6 80 66 01 00 00 6c 	movb   $0x6c,0x166(%eax)
  10308d:	c6 80 c6 01 00 00 4c 	movb   $0x4c,0x1c6(%eax)
  103094:	c6 80 72 01 00 00 6d 	movb   $0x6d,0x172(%eax)
  10309b:	c6 80 d2 01 00 00 4d 	movb   $0x4d,0x1d2(%eax)
  1030a2:	c6 80 71 01 00 00 6e 	movb   $0x6e,0x171(%eax)
  1030a9:	c6 80 d1 01 00 00 4e 	movb   $0x4e,0x1d1(%eax)
  1030b0:	c6 80 58 01 00 00 6f 	movb   $0x6f,0x158(%eax)
  1030b7:	c6 80 b8 01 00 00 4f 	movb   $0x4f,0x1b8(%eax)
  1030be:	c6 80 59 01 00 00 70 	movb   $0x70,0x159(%eax)
  1030c5:	c6 80 b9 01 00 00 50 	movb   $0x50,0x1b9(%eax)
  1030cc:	c6 80 50 01 00 00 71 	movb   $0x71,0x150(%eax)
  1030d3:	c6 80 b0 01 00 00 51 	movb   $0x51,0x1b0(%eax)
  1030da:	c6 80 53 01 00 00 72 	movb   $0x72,0x153(%eax)
  1030e1:	c6 80 b3 01 00 00 52 	movb   $0x52,0x1b3(%eax)
  1030e8:	c6 80 5f 01 00 00 73 	movb   $0x73,0x15f(%eax)
  1030ef:	c6 80 bf 01 00 00 53 	movb   $0x53,0x1bf(%eax)
  1030f6:	c6 80 54 01 00 00 74 	movb   $0x74,0x154(%eax)
  1030fd:	c6 80 b4 01 00 00 54 	movb   $0x54,0x1b4(%eax)
  103104:	c6 80 56 01 00 00 75 	movb   $0x75,0x156(%eax)
  10310b:	c6 80 b6 01 00 00 55 	movb   $0x55,0x1b6(%eax)
  103112:	c6 80 6f 01 00 00 76 	movb   $0x76,0x16f(%eax)
  103119:	c6 80 cf 01 00 00 56 	movb   $0x56,0x1cf(%eax)
  103120:	c6 80 51 01 00 00 77 	movb   $0x77,0x151(%eax)
  103127:	c6 80 b1 01 00 00 57 	movb   $0x57,0x1b1(%eax)
  10312e:	c6 80 6d 01 00 00 78 	movb   $0x78,0x16d(%eax)
  103135:	c6 80 cd 01 00 00 58 	movb   $0x58,0x1cd(%eax)
  10313c:	c6 80 55 01 00 00 79 	movb   $0x79,0x155(%eax)
  103143:	c6 80 b5 01 00 00 59 	movb   $0x59,0x1b5(%eax)
  10314a:	c6 80 6c 01 00 00 7a 	movb   $0x7a,0x16c(%eax)
  103151:	c6 80 cc 01 00 00 5a 	movb   $0x5a,0x1cc(%eax)
  103158:	c6 80 4c 01 00 00 2d 	movb   $0x2d,0x14c(%eax)
  10315f:	c6 80 ac 01 00 00 5f 	movb   $0x5f,0x1ac(%eax)
  103166:	c6 80 4d 01 00 00 3d 	movb   $0x3d,0x14d(%eax)
  10316d:	c6 80 ad 01 00 00 2b 	movb   $0x2b,0x1ad(%eax)
  103174:	c6 80 5a 01 00 00 5b 	movb   $0x5b,0x15a(%eax)
  10317b:	c6 80 ba 01 00 00 7b 	movb   $0x7b,0x1ba(%eax)
  103182:	c6 80 5b 01 00 00 5d 	movb   $0x5d,0x15b(%eax)
  103189:	c6 80 bb 01 00 00 7d 	movb   $0x7d,0x1bb(%eax)
  103190:	c6 80 5c 01 00 00 0a 	movb   $0xa,0x15c(%eax)
  103197:	c6 80 bc 01 00 00 0a 	movb   $0xa,0x1bc(%eax)
  10319e:	c6 80 67 01 00 00 3b 	movb   $0x3b,0x167(%eax)
  1031a5:	c6 80 c7 01 00 00 3a 	movb   $0x3a,0x1c7(%eax)
  1031ac:	c6 80 68 01 00 00 27 	movb   $0x27,0x168(%eax)
  1031b3:	c6 80 c8 01 00 00 22 	movb   $0x22,0x1c8(%eax)
  1031ba:	c6 80 69 01 00 00 60 	movb   $0x60,0x169(%eax)
  1031c1:	c6 80 c9 01 00 00 7e 	movb   $0x7e,0x1c9(%eax)
  1031c8:	c6 80 6b 01 00 00 5c 	movb   $0x5c,0x16b(%eax)
  1031cf:	c6 80 cb 01 00 00 7c 	movb   $0x7c,0x1cb(%eax)
  1031d6:	c6 80 73 01 00 00 2c 	movb   $0x2c,0x173(%eax)
  1031dd:	c6 80 d3 01 00 00 3c 	movb   $0x3c,0x1d3(%eax)
  1031e4:	c6 80 74 01 00 00 2e 	movb   $0x2e,0x174(%eax)
  1031eb:	c6 80 d4 01 00 00 3e 	movb   $0x3e,0x1d4(%eax)
  1031f2:	c6 80 75 01 00 00 2f 	movb   $0x2f,0x175(%eax)
  1031f9:	c6 80 d5 01 00 00 3f 	movb   $0x3f,0x1d5(%eax)
  103200:	c6 80 79 01 00 00 20 	movb   $0x20,0x179(%eax)
  103207:	c6 80 d9 01 00 00 20 	movb   $0x20,0x1d9(%eax)
  10320e:	90                   	nop
  10320f:	c9                   	leave  
  103210:	c3                   	ret    

00103211 <getKeyCode>:
  103211:	55                   	push   %ebp
  103212:	89 e5                	mov    %esp,%ebp
  103214:	83 ec 10             	sub    $0x10,%esp
  103217:	e8 29 d2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10321c:	05 e4 3d 00 00       	add    $0x3de4,%eax
  103221:	6a 60                	push   $0x60
  103223:	e8 7e fc ff ff       	call   102ea6 <inByte>
  103228:	83 c4 04             	add    $0x4,%esp
  10322b:	0f b6 c0             	movzbl %al,%eax
  10322e:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103231:	6a 61                	push   $0x61
  103233:	e8 6e fc ff ff       	call   102ea6 <inByte>
  103238:	83 c4 04             	add    $0x4,%esp
  10323b:	0f b6 c0             	movzbl %al,%eax
  10323e:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103241:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103244:	83 c8 80             	or     $0xffffff80,%eax
  103247:	0f be c0             	movsbl %al,%eax
  10324a:	50                   	push   %eax
  10324b:	6a 61                	push   $0x61
  10324d:	e8 79 fc ff ff       	call   102ecb <outByte>
  103252:	83 c4 08             	add    $0x8,%esp
  103255:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103258:	0f be c0             	movsbl %al,%eax
  10325b:	50                   	push   %eax
  10325c:	6a 61                	push   $0x61
  10325e:	e8 68 fc ff ff       	call   102ecb <outByte>
  103263:	83 c4 08             	add    $0x8,%esp
  103266:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  10326d:	77 05                	ja     103274 <getKeyCode+0x63>
  10326f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103272:	eb 05                	jmp    103279 <getKeyCode+0x68>
  103274:	b8 00 00 00 00       	mov    $0x0,%eax
  103279:	c9                   	leave  
  10327a:	c3                   	ret    

0010327b <switchKeyboard>:
  10327b:	55                   	push   %ebp
  10327c:	89 e5                	mov    %esp,%ebp
  10327e:	e8 c2 d1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103283:	05 7d 3d 00 00       	add    $0x3d7d,%eax
  103288:	8b 88 fc 01 00 00    	mov    0x1fc(%eax),%ecx
  10328e:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  103294:	39 d1                	cmp    %edx,%ecx
  103296:	75 0e                	jne    1032a6 <switchKeyboard+0x2b>
  103298:	8d 90 a0 01 00 00    	lea    0x1a0(%eax),%edx
  10329e:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  1032a4:	eb 0c                	jmp    1032b2 <switchKeyboard+0x37>
  1032a6:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  1032ac:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  1032b2:	90                   	nop
  1032b3:	5d                   	pop    %ebp
  1032b4:	c3                   	ret    

001032b5 <getChar>:
  1032b5:	55                   	push   %ebp
  1032b6:	89 e5                	mov    %esp,%ebp
  1032b8:	53                   	push   %ebx
  1032b9:	e8 77 d5 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1032be:	81 c3 42 3d 00 00    	add    $0x3d42,%ebx
  1032c4:	8b 45 08             	mov    0x8(%ebp),%eax
  1032c7:	83 f8 3a             	cmp    $0x3a,%eax
  1032ca:	74 32                	je     1032fe <getChar+0x49>
  1032cc:	83 f8 3a             	cmp    $0x3a,%eax
  1032cf:	77 0f                	ja     1032e0 <getChar+0x2b>
  1032d1:	83 f8 2a             	cmp    $0x2a,%eax
  1032d4:	74 21                	je     1032f7 <getChar+0x42>
  1032d6:	83 f8 36             	cmp    $0x36,%eax
  1032d9:	74 1c                	je     1032f7 <getChar+0x42>
  1032db:	e9 87 00 00 00       	jmp    103367 <getChar+0xb2>
  1032e0:	3d b6 00 00 00       	cmp    $0xb6,%eax
  1032e5:	74 10                	je     1032f7 <getChar+0x42>
  1032e7:	3d ba 00 00 00       	cmp    $0xba,%eax
  1032ec:	74 42                	je     103330 <getChar+0x7b>
  1032ee:	3d aa 00 00 00       	cmp    $0xaa,%eax
  1032f3:	74 02                	je     1032f7 <getChar+0x42>
  1032f5:	eb 70                	jmp    103367 <getChar+0xb2>
  1032f7:	e8 7f ff ff ff       	call   10327b <switchKeyboard>
  1032fc:	eb 69                	jmp    103367 <getChar+0xb2>
  1032fe:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  103304:	85 c0                	test   %eax,%eax
  103306:	75 11                	jne    103319 <getChar+0x64>
  103308:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  10330f:	00 00 00 
  103312:	e8 64 ff ff ff       	call   10327b <switchKeyboard>
  103317:	eb 4a                	jmp    103363 <getChar+0xae>
  103319:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  10331f:	83 f8 01             	cmp    $0x1,%eax
  103322:	75 3f                	jne    103363 <getChar+0xae>
  103324:	c7 83 00 02 00 00 02 	movl   $0x2,0x200(%ebx)
  10332b:	00 00 00 
  10332e:	eb 33                	jmp    103363 <getChar+0xae>
  103330:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  103336:	83 f8 01             	cmp    $0x1,%eax
  103339:	75 0c                	jne    103347 <getChar+0x92>
  10333b:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  103342:	00 00 00 
  103345:	eb 1f                	jmp    103366 <getChar+0xb1>
  103347:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  10334d:	83 f8 02             	cmp    $0x2,%eax
  103350:	75 14                	jne    103366 <getChar+0xb1>
  103352:	c7 83 00 02 00 00 00 	movl   $0x0,0x200(%ebx)
  103359:	00 00 00 
  10335c:	e8 1a ff ff ff       	call   10327b <switchKeyboard>
  103361:	eb 03                	jmp    103366 <getChar+0xb1>
  103363:	90                   	nop
  103364:	eb 01                	jmp    103367 <getChar+0xb2>
  103366:	90                   	nop
  103367:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  10336b:	76 04                	jbe    103371 <getChar+0xbc>
  10336d:	b0 00                	mov    $0x0,%al
  10336f:	eb 0d                	jmp    10337e <getChar+0xc9>
  103371:	8b 93 fc 01 00 00    	mov    0x1fc(%ebx),%edx
  103377:	8b 45 08             	mov    0x8(%ebp),%eax
  10337a:	01 d0                	add    %edx,%eax
  10337c:	8a 00                	mov    (%eax),%al
  10337e:	5b                   	pop    %ebx
  10337f:	5d                   	pop    %ebp
  103380:	c3                   	ret    

00103381 <waitForInterrupt>:
  103381:	55                   	push   %ebp
  103382:	89 e5                	mov    %esp,%ebp
  103384:	e8 bc d0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103389:	05 77 3c 00 00       	add    $0x3c77,%eax
  10338e:	f4                   	hlt    
  10338f:	90                   	nop
  103390:	5d                   	pop    %ebp
  103391:	c3                   	ret    

00103392 <enableInterrupt>:
  103392:	55                   	push   %ebp
  103393:	89 e5                	mov    %esp,%ebp
  103395:	e8 ab d0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10339a:	05 66 3c 00 00       	add    $0x3c66,%eax
  10339f:	fb                   	sti    
  1033a0:	90                   	nop
  1033a1:	5d                   	pop    %ebp
  1033a2:	c3                   	ret    

001033a3 <setGdt>:
  1033a3:	55                   	push   %ebp
  1033a4:	89 e5                	mov    %esp,%ebp
  1033a6:	e8 9a d0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1033ab:	05 55 3c 00 00       	add    $0x3c55,%eax
  1033b0:	8b 55 0c             	mov    0xc(%ebp),%edx
  1033b3:	4a                   	dec    %edx
  1033b4:	66 89 90 04 02 00 00 	mov    %dx,0x204(%eax)
  1033bb:	8b 55 08             	mov    0x8(%ebp),%edx
  1033be:	66 89 90 06 02 00 00 	mov    %dx,0x206(%eax)
  1033c5:	8b 55 08             	mov    0x8(%ebp),%edx
  1033c8:	c1 ea 10             	shr    $0x10,%edx
  1033cb:	66 89 90 08 02 00 00 	mov    %dx,0x208(%eax)
  1033d2:	8d 80 04 02 00 00    	lea    0x204(%eax),%eax
  1033d8:	0f 01 10             	lgdtl  (%eax)
  1033db:	90                   	nop
  1033dc:	5d                   	pop    %ebp
  1033dd:	c3                   	ret    

001033de <lLdt>:
  1033de:	55                   	push   %ebp
  1033df:	89 e5                	mov    %esp,%ebp
  1033e1:	83 ec 04             	sub    $0x4,%esp
  1033e4:	e8 5c d0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1033e9:	05 17 3c 00 00       	add    $0x3c17,%eax
  1033ee:	8b 45 08             	mov    0x8(%ebp),%eax
  1033f1:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1033f5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1033f8:	0f 00 d0             	lldt   %ax
  1033fb:	90                   	nop
  1033fc:	c9                   	leave  
  1033fd:	c3                   	ret    

001033fe <initSeg>:
  1033fe:	55                   	push   %ebp
  1033ff:	89 e5                	mov    %esp,%ebp
  103401:	56                   	push   %esi
  103402:	53                   	push   %ebx
  103403:	83 ec 14             	sub    $0x14,%esp
  103406:	e8 2a d4 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  10340b:	81 c3 f5 3b 00 00    	add    $0x3bf5,%ebx
  103411:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103418:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10341e:	66 c7 40 08 ff ff    	movw   $0xffff,0x8(%eax)
  103424:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10342a:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%eax)
  103430:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103436:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
  10343a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103440:	8a 50 0d             	mov    0xd(%eax),%dl
  103443:	83 e2 f0             	and    $0xfffffff0,%edx
  103446:	83 ca 0a             	or     $0xa,%edx
  103449:	88 50 0d             	mov    %dl,0xd(%eax)
  10344c:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103452:	8a 50 0d             	mov    0xd(%eax),%dl
  103455:	83 ca 10             	or     $0x10,%edx
  103458:	88 50 0d             	mov    %dl,0xd(%eax)
  10345b:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103461:	8a 50 0d             	mov    0xd(%eax),%dl
  103464:	83 e2 9f             	and    $0xffffff9f,%edx
  103467:	88 50 0d             	mov    %dl,0xd(%eax)
  10346a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103470:	8a 50 0d             	mov    0xd(%eax),%dl
  103473:	83 ca 80             	or     $0xffffff80,%edx
  103476:	88 50 0d             	mov    %dl,0xd(%eax)
  103479:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10347f:	8a 50 0e             	mov    0xe(%eax),%dl
  103482:	83 ca 0f             	or     $0xf,%edx
  103485:	88 50 0e             	mov    %dl,0xe(%eax)
  103488:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10348e:	8a 50 0e             	mov    0xe(%eax),%dl
  103491:	83 e2 ef             	and    $0xffffffef,%edx
  103494:	88 50 0e             	mov    %dl,0xe(%eax)
  103497:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10349d:	8a 50 0e             	mov    0xe(%eax),%dl
  1034a0:	83 e2 df             	and    $0xffffffdf,%edx
  1034a3:	88 50 0e             	mov    %dl,0xe(%eax)
  1034a6:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034ac:	8a 50 0e             	mov    0xe(%eax),%dl
  1034af:	83 ca 40             	or     $0x40,%edx
  1034b2:	88 50 0e             	mov    %dl,0xe(%eax)
  1034b5:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034bb:	8a 50 0e             	mov    0xe(%eax),%dl
  1034be:	83 ca 80             	or     $0xffffff80,%edx
  1034c1:	88 50 0e             	mov    %dl,0xe(%eax)
  1034c4:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034ca:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  1034ce:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034d4:	66 c7 40 10 ff ff    	movw   $0xffff,0x10(%eax)
  1034da:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034e0:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
  1034e6:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034ec:	c6 40 14 00          	movb   $0x0,0x14(%eax)
  1034f0:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1034f6:	8a 50 15             	mov    0x15(%eax),%dl
  1034f9:	83 e2 f0             	and    $0xfffffff0,%edx
  1034fc:	83 ca 02             	or     $0x2,%edx
  1034ff:	88 50 15             	mov    %dl,0x15(%eax)
  103502:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103508:	8a 50 15             	mov    0x15(%eax),%dl
  10350b:	83 ca 10             	or     $0x10,%edx
  10350e:	88 50 15             	mov    %dl,0x15(%eax)
  103511:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103517:	8a 50 15             	mov    0x15(%eax),%dl
  10351a:	83 e2 9f             	and    $0xffffff9f,%edx
  10351d:	88 50 15             	mov    %dl,0x15(%eax)
  103520:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103526:	8a 50 15             	mov    0x15(%eax),%dl
  103529:	83 ca 80             	or     $0xffffff80,%edx
  10352c:	88 50 15             	mov    %dl,0x15(%eax)
  10352f:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103535:	8a 50 16             	mov    0x16(%eax),%dl
  103538:	83 ca 0f             	or     $0xf,%edx
  10353b:	88 50 16             	mov    %dl,0x16(%eax)
  10353e:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103544:	8a 50 16             	mov    0x16(%eax),%dl
  103547:	83 e2 ef             	and    $0xffffffef,%edx
  10354a:	88 50 16             	mov    %dl,0x16(%eax)
  10354d:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103553:	8a 50 16             	mov    0x16(%eax),%dl
  103556:	83 e2 df             	and    $0xffffffdf,%edx
  103559:	88 50 16             	mov    %dl,0x16(%eax)
  10355c:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103562:	8a 50 16             	mov    0x16(%eax),%dl
  103565:	83 ca 40             	or     $0x40,%edx
  103568:	88 50 16             	mov    %dl,0x16(%eax)
  10356b:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103571:	8a 50 16             	mov    0x16(%eax),%dl
  103574:	83 ca 80             	or     $0xffffff80,%edx
  103577:	88 50 16             	mov    %dl,0x16(%eax)
  10357a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103580:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  103584:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  10358b:	e9 e1 01 00 00       	jmp    103771 <initSeg+0x373>
  103590:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103593:	01 c0                	add    %eax,%eax
  103595:	40                   	inc    %eax
  103596:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103599:	42                   	inc    %edx
  10359a:	c1 e2 14             	shl    $0x14,%edx
  10359d:	c1 ea 10             	shr    $0x10,%edx
  1035a0:	88 d1                	mov    %dl,%cl
  1035a2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1035a5:	42                   	inc    %edx
  1035a6:	c1 e2 14             	shl    $0x14,%edx
  1035a9:	c1 ea 18             	shr    $0x18,%edx
  1035ac:	88 55 e7             	mov    %dl,-0x19(%ebp)
  1035af:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1035b5:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  1035bb:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1035c1:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  1035c8:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1035ce:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  1035d2:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1035d8:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1035dc:	83 e1 f0             	and    $0xfffffff0,%ecx
  1035df:	89 ce                	mov    %ecx,%esi
  1035e1:	83 ce 0a             	or     $0xa,%esi
  1035e4:	89 f1                	mov    %esi,%ecx
  1035e6:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1035ea:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1035f0:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1035f4:	83 c9 10             	or     $0x10,%ecx
  1035f7:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1035fb:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103601:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103605:	83 c9 60             	or     $0x60,%ecx
  103608:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  10360c:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103612:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103616:	83 c9 80             	or     $0xffffff80,%ecx
  103619:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  10361d:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103623:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103627:	83 e1 f0             	and    $0xfffffff0,%ecx
  10362a:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10362e:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103634:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103638:	83 e1 ef             	and    $0xffffffef,%ecx
  10363b:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10363f:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103645:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103649:	83 e1 df             	and    $0xffffffdf,%ecx
  10364c:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103650:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103656:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10365a:	83 c9 40             	or     $0x40,%ecx
  10365d:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103661:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103667:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10366b:	83 c9 80             	or     $0xffffff80,%ecx
  10366e:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103672:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103678:	8a 4d e7             	mov    -0x19(%ebp),%cl
  10367b:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  10367f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103682:	40                   	inc    %eax
  103683:	01 c0                	add    %eax,%eax
  103685:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103688:	42                   	inc    %edx
  103689:	c1 e2 14             	shl    $0x14,%edx
  10368c:	c1 ea 10             	shr    $0x10,%edx
  10368f:	88 d1                	mov    %dl,%cl
  103691:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103694:	42                   	inc    %edx
  103695:	c1 e2 14             	shl    $0x14,%edx
  103698:	c1 ea 18             	shr    $0x18,%edx
  10369b:	88 55 e7             	mov    %dl,-0x19(%ebp)
  10369e:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036a4:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  1036aa:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036b0:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  1036b7:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036bd:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  1036c1:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036c7:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1036cb:	83 e1 f0             	and    $0xfffffff0,%ecx
  1036ce:	89 ce                	mov    %ecx,%esi
  1036d0:	83 ce 02             	or     $0x2,%esi
  1036d3:	89 f1                	mov    %esi,%ecx
  1036d5:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1036d9:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036df:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1036e3:	83 c9 10             	or     $0x10,%ecx
  1036e6:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1036ea:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  1036f0:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1036f4:	83 c9 60             	or     $0x60,%ecx
  1036f7:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1036fb:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103701:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103705:	83 c9 80             	or     $0xffffff80,%ecx
  103708:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  10370c:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103712:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103716:	83 e1 f0             	and    $0xfffffff0,%ecx
  103719:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10371d:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103723:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103727:	83 e1 ef             	and    $0xffffffef,%ecx
  10372a:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10372e:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103734:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103738:	83 e1 df             	and    $0xffffffdf,%ecx
  10373b:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10373f:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103745:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103749:	83 c9 40             	or     $0x40,%ecx
  10374c:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103750:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103756:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10375a:	83 c9 80             	or     $0xffffff80,%ecx
  10375d:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103761:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103767:	8a 4d e7             	mov    -0x19(%ebp),%cl
  10376a:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  10376e:	ff 45 f4             	incl   -0xc(%ebp)
  103771:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  103775:	0f 8e 15 fe ff ff    	jle    103590 <initSeg+0x192>
  10377b:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103781:	66 c7 80 98 00 00 00 	movw   $0x63,0x98(%eax)
  103788:	63 00 
  10378a:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  103790:	c7 c2 40 8f 10 00    	mov    $0x108f40,%edx
  103796:	66 89 82 9a 00 00 00 	mov    %ax,0x9a(%edx)
  10379d:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  1037a3:	c1 e8 10             	shr    $0x10,%eax
  1037a6:	88 c2                	mov    %al,%dl
  1037a8:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1037ae:	88 90 9c 00 00 00    	mov    %dl,0x9c(%eax)
  1037b4:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1037ba:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1037c0:	83 e2 f0             	and    $0xfffffff0,%edx
  1037c3:	83 ca 09             	or     $0x9,%edx
  1037c6:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1037cc:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1037d2:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1037d8:	83 e2 ef             	and    $0xffffffef,%edx
  1037db:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1037e1:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1037e7:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1037ed:	83 e2 9f             	and    $0xffffff9f,%edx
  1037f0:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1037f6:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1037fc:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  103802:	83 ca 80             	or     $0xffffff80,%edx
  103805:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  10380b:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103811:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103817:	83 e2 f0             	and    $0xfffffff0,%edx
  10381a:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103820:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103826:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10382c:	83 e2 ef             	and    $0xffffffef,%edx
  10382f:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103835:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  10383b:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103841:	83 e2 df             	and    $0xffffffdf,%edx
  103844:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10384a:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103850:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103856:	83 ca 40             	or     $0x40,%edx
  103859:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10385f:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103865:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10386b:	83 e2 7f             	and    $0x7f,%edx
  10386e:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103874:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  10387a:	c1 e8 18             	shr    $0x18,%eax
  10387d:	88 c2                	mov    %al,%dl
  10387f:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103885:	88 90 9f 00 00 00    	mov    %dl,0x9f(%eax)
  10388b:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  103891:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  103897:	83 e2 ef             	and    $0xffffffef,%edx
  10389a:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1038a0:	68 a0 00 00 00       	push   $0xa0
  1038a5:	c7 c0 40 8f 10 00    	mov    $0x108f40,%eax
  1038ab:	50                   	push   %eax
  1038ac:	e8 f2 fa ff ff       	call   1033a3 <setGdt>
  1038b1:	83 c4 08             	add    $0x8,%esp
  1038b4:	c7 c0 e0 8f 10 00    	mov    $0x108fe0,%eax
  1038ba:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
  1038c1:	b8 98 00 00 00       	mov    $0x98,%eax
  1038c6:	0f 00 d8             	ltr    %ax
  1038c9:	b8 10 00 00 00       	mov    $0x10,%eax
  1038ce:	8e d8                	mov    %eax,%ds
  1038d0:	b8 10 00 00 00       	mov    $0x10,%eax
  1038d5:	8e d0                	mov    %eax,%ss
  1038d7:	6a 00                	push   $0x0
  1038d9:	e8 00 fb ff ff       	call   1033de <lLdt>
  1038de:	83 c4 04             	add    $0x4,%esp
  1038e1:	90                   	nop
  1038e2:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1038e5:	5b                   	pop    %ebx
  1038e6:	5e                   	pop    %esi
  1038e7:	5d                   	pop    %ebp
  1038e8:	c3                   	ret    

001038e9 <initFS>:
  1038e9:	55                   	push   %ebp
  1038ea:	89 e5                	mov    %esp,%ebp
  1038ec:	53                   	push   %ebx
  1038ed:	83 ec 04             	sub    $0x4,%esp
  1038f0:	e8 50 cb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1038f5:	05 0b 37 00 00       	add    $0x370b,%eax
  1038fa:	83 ec 0c             	sub    $0xc,%esp
  1038fd:	c7 c2 60 90 10 00    	mov    $0x109060,%edx
  103903:	52                   	push   %edx
  103904:	89 c3                	mov    %eax,%ebx
  103906:	e8 3e cb ff ff       	call   100449 <readSuperBlock>
  10390b:	83 c4 10             	add    $0x10,%esp
  10390e:	90                   	nop
  10390f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103912:	c9                   	leave  
  103913:	c3                   	ret    

00103914 <initSem>:
  103914:	55                   	push   %ebp
  103915:	89 e5                	mov    %esp,%ebp
  103917:	53                   	push   %ebx
  103918:	83 ec 10             	sub    $0x10,%esp
  10391b:	e8 25 cb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103920:	05 e0 36 00 00       	add    $0x36e0,%eax
  103925:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10392c:	eb 7a                	jmp    1039a8 <initSem+0x94>
  10392e:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103934:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103937:	c1 e1 04             	shl    $0x4,%ecx
  10393a:	01 ca                	add    %ecx,%edx
  10393c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103942:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103948:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  10394b:	c1 e1 04             	shl    $0x4,%ecx
  10394e:	01 ca                	add    %ecx,%edx
  103950:	83 c2 04             	add    $0x4,%edx
  103953:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103959:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10395c:	89 d1                	mov    %edx,%ecx
  10395e:	c1 e1 04             	shl    $0x4,%ecx
  103961:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103967:	01 ca                	add    %ecx,%edx
  103969:	8d 4a 08             	lea    0x8(%edx),%ecx
  10396c:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103972:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103975:	c1 e3 04             	shl    $0x4,%ebx
  103978:	01 da                	add    %ebx,%edx
  10397a:	83 c2 08             	add    $0x8,%edx
  10397d:	89 0a                	mov    %ecx,(%edx)
  10397f:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103982:	89 d1                	mov    %edx,%ecx
  103984:	c1 e1 04             	shl    $0x4,%ecx
  103987:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  10398d:	01 ca                	add    %ecx,%edx
  10398f:	8d 4a 08             	lea    0x8(%edx),%ecx
  103992:	c7 c2 c0 8e 10 00    	mov    $0x108ec0,%edx
  103998:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  10399b:	c1 e3 04             	shl    $0x4,%ebx
  10399e:	01 da                	add    %ebx,%edx
  1039a0:	83 c2 0c             	add    $0xc,%edx
  1039a3:	89 0a                	mov    %ecx,(%edx)
  1039a5:	ff 45 f8             	incl   -0x8(%ebp)
  1039a8:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  1039ac:	7e 80                	jle    10392e <initSem+0x1a>
  1039ae:	90                   	nop
  1039af:	83 c4 10             	add    $0x10,%esp
  1039b2:	5b                   	pop    %ebx
  1039b3:	5d                   	pop    %ebp
  1039b4:	c3                   	ret    

001039b5 <initDev>:
  1039b5:	55                   	push   %ebp
  1039b6:	89 e5                	mov    %esp,%ebp
  1039b8:	53                   	push   %ebx
  1039b9:	83 ec 10             	sub    $0x10,%esp
  1039bc:	e8 84 ca ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1039c1:	05 3f 36 00 00       	add    $0x363f,%eax
  1039c6:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1039cd:	eb 7a                	jmp    103a49 <initDev+0x94>
  1039cf:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  1039d5:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1039d8:	c1 e1 04             	shl    $0x4,%ecx
  1039db:	01 ca                	add    %ecx,%edx
  1039dd:	c7 02 01 00 00 00    	movl   $0x1,(%edx)
  1039e3:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  1039e9:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1039ec:	c1 e1 04             	shl    $0x4,%ecx
  1039ef:	01 ca                	add    %ecx,%edx
  1039f1:	83 c2 04             	add    $0x4,%edx
  1039f4:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1039fa:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1039fd:	89 d1                	mov    %edx,%ecx
  1039ff:	c1 e1 04             	shl    $0x4,%ecx
  103a02:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103a08:	01 ca                	add    %ecx,%edx
  103a0a:	8d 4a 08             	lea    0x8(%edx),%ecx
  103a0d:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103a13:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103a16:	c1 e3 04             	shl    $0x4,%ebx
  103a19:	01 da                	add    %ebx,%edx
  103a1b:	83 c2 08             	add    $0x8,%edx
  103a1e:	89 0a                	mov    %ecx,(%edx)
  103a20:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103a23:	89 d1                	mov    %edx,%ecx
  103a25:	c1 e1 04             	shl    $0x4,%ecx
  103a28:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103a2e:	01 ca                	add    %ecx,%edx
  103a30:	8d 4a 08             	lea    0x8(%edx),%ecx
  103a33:	c7 c2 80 8e 10 00    	mov    $0x108e80,%edx
  103a39:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103a3c:	c1 e3 04             	shl    $0x4,%ebx
  103a3f:	01 da                	add    %ebx,%edx
  103a41:	83 c2 0c             	add    $0xc,%edx
  103a44:	89 0a                	mov    %ecx,(%edx)
  103a46:	ff 45 f8             	incl   -0x8(%ebp)
  103a49:	83 7d f8 03          	cmpl   $0x3,-0x8(%ebp)
  103a4d:	7e 80                	jle    1039cf <initDev+0x1a>
  103a4f:	90                   	nop
  103a50:	83 c4 10             	add    $0x10,%esp
  103a53:	5b                   	pop    %ebx
  103a54:	5d                   	pop    %ebp
  103a55:	c3                   	ret    

00103a56 <loadElf>:
  103a56:	55                   	push   %ebp
  103a57:	89 e5                	mov    %esp,%ebp
  103a59:	56                   	push   %esi
  103a5a:	53                   	push   %ebx
  103a5b:	81 ec a0 00 00 00    	sub    $0xa0,%esp
  103a61:	e8 cf cd ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103a66:	81 c3 9a 35 00 00    	add    $0x359a,%ebx
  103a6c:	89 e0                	mov    %esp,%eax
  103a6e:	89 c6                	mov    %eax,%esi
  103a70:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103a77:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103a7e:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103a84:	8b 40 14             	mov    0x14(%eax),%eax
  103a87:	8d 50 ff             	lea    -0x1(%eax),%edx
  103a8a:	89 55 e8             	mov    %edx,-0x18(%ebp)
  103a8d:	89 c2                	mov    %eax,%edx
  103a8f:	b8 10 00 00 00       	mov    $0x10,%eax
  103a94:	48                   	dec    %eax
  103a95:	01 d0                	add    %edx,%eax
  103a97:	b9 10 00 00 00       	mov    $0x10,%ecx
  103a9c:	ba 00 00 00 00       	mov    $0x0,%edx
  103aa1:	f7 f1                	div    %ecx
  103aa3:	6b c0 10             	imul   $0x10,%eax,%eax
  103aa6:	29 c4                	sub    %eax,%esp
  103aa8:	89 e0                	mov    %esp,%eax
  103aaa:	83 c0 00             	add    $0x0,%eax
  103aad:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103ab0:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  103ab7:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
  103abe:	00 00 00 
  103ac1:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  103ac8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103acf:	83 ec 0c             	sub    $0xc,%esp
  103ad2:	8d 83 e4 d8 ff ff    	lea    -0x271c(%ebx),%eax
  103ad8:	50                   	push   %eax
  103ad9:	e8 f5 05 00 00       	call   1040d3 <putString>
  103ade:	83 c4 10             	add    $0x10,%esp
  103ae1:	83 ec 0c             	sub    $0xc,%esp
  103ae4:	ff 75 08             	pushl  0x8(%ebp)
  103ae7:	e8 e7 05 00 00       	call   1040d3 <putString>
  103aec:	83 c4 10             	add    $0x10,%esp
  103aef:	83 ec 0c             	sub    $0xc,%esp
  103af2:	6a 0a                	push   $0xa
  103af4:	e8 a4 05 00 00       	call   10409d <putChar>
  103af9:	83 c4 10             	add    $0x10,%esp
  103afc:	ff 75 08             	pushl  0x8(%ebp)
  103aff:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
  103b05:	50                   	push   %eax
  103b06:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103b0c:	50                   	push   %eax
  103b0d:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103b13:	50                   	push   %eax
  103b14:	e8 6c ca ff ff       	call   100585 <readInode>
  103b19:	83 c4 10             	add    $0x10,%esp
  103b1c:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103b1f:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  103b23:	75 0a                	jne    103b2f <loadElf+0xd9>
  103b25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103b2a:	e9 5c 01 00 00       	jmp    103c8b <loadElf+0x235>
  103b2f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103b32:	50                   	push   %eax
  103b33:	6a 00                	push   $0x0
  103b35:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103b3b:	50                   	push   %eax
  103b3c:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103b42:	50                   	push   %eax
  103b43:	e8 32 c9 ff ff       	call   10047a <readBlock>
  103b48:	83 c4 10             	add    $0x10,%esp
  103b4b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103b4e:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  103b52:	75 0a                	jne    103b5e <loadElf+0x108>
  103b54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103b59:	e9 2d 01 00 00       	jmp    103c8b <loadElf+0x235>
  103b5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103b61:	89 45 dc             	mov    %eax,-0x24(%ebp)
  103b64:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103b67:	8b 00                	mov    (%eax),%eax
  103b69:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  103b6e:	74 0a                	je     103b7a <loadElf+0x124>
  103b70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103b75:	e9 11 01 00 00       	jmp    103c8b <loadElf+0x235>
  103b7a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103b81:	eb 31                	jmp    103bb4 <loadElf+0x15e>
  103b83:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103b89:	8b 40 14             	mov    0x14(%eax),%eax
  103b8c:	0f af 45 ec          	imul   -0x14(%ebp),%eax
  103b90:	89 c2                	mov    %eax,%edx
  103b92:	8b 45 0c             	mov    0xc(%ebp),%eax
  103b95:	01 d0                	add    %edx,%eax
  103b97:	50                   	push   %eax
  103b98:	ff 75 ec             	pushl  -0x14(%ebp)
  103b9b:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103ba1:	50                   	push   %eax
  103ba2:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103ba8:	50                   	push   %eax
  103ba9:	e8 cc c8 ff ff       	call   10047a <readBlock>
  103bae:	83 c4 10             	add    $0x10,%esp
  103bb1:	ff 45 ec             	incl   -0x14(%ebp)
  103bb4:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
  103bba:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  103bbd:	7c c4                	jl     103b83 <loadElf+0x12d>
  103bbf:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103bc2:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103bc5:	8b 40 1c             	mov    0x1c(%eax),%eax
  103bc8:	01 d0                	add    %edx,%eax
  103bca:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103bcd:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103bd4:	e9 90 00 00 00       	jmp    103c69 <loadElf+0x213>
  103bd9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103bdc:	8b 00                	mov    (%eax),%eax
  103bde:	83 f8 01             	cmp    $0x1,%eax
  103be1:	75 7f                	jne    103c62 <loadElf+0x20c>
  103be3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103be6:	8b 50 08             	mov    0x8(%eax),%edx
  103be9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103bec:	8b 40 04             	mov    0x4(%eax),%eax
  103bef:	39 c2                	cmp    %eax,%edx
  103bf1:	74 6f                	je     103c62 <loadElf+0x20c>
  103bf3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103bfa:	eb 2b                	jmp    103c27 <loadElf+0x1d1>
  103bfc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103bff:	8b 50 04             	mov    0x4(%eax),%edx
  103c02:	8b 45 0c             	mov    0xc(%ebp),%eax
  103c05:	01 c2                	add    %eax,%edx
  103c07:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c0a:	01 d0                	add    %edx,%eax
  103c0c:	89 c1                	mov    %eax,%ecx
  103c0e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103c11:	8b 50 08             	mov    0x8(%eax),%edx
  103c14:	8b 45 0c             	mov    0xc(%ebp),%eax
  103c17:	01 c2                	add    %eax,%edx
  103c19:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c1c:	01 d0                	add    %edx,%eax
  103c1e:	89 c2                	mov    %eax,%edx
  103c20:	8a 01                	mov    (%ecx),%al
  103c22:	88 02                	mov    %al,(%edx)
  103c24:	ff 45 f0             	incl   -0x10(%ebp)
  103c27:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103c2a:	8b 50 10             	mov    0x10(%eax),%edx
  103c2d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c30:	39 c2                	cmp    %eax,%edx
  103c32:	77 c8                	ja     103bfc <loadElf+0x1a6>
  103c34:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103c37:	8b 40 10             	mov    0x10(%eax),%eax
  103c3a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103c3d:	eb 16                	jmp    103c55 <loadElf+0x1ff>
  103c3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103c42:	8b 50 08             	mov    0x8(%eax),%edx
  103c45:	8b 45 0c             	mov    0xc(%ebp),%eax
  103c48:	01 c2                	add    %eax,%edx
  103c4a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c4d:	01 d0                	add    %edx,%eax
  103c4f:	c6 00 00             	movb   $0x0,(%eax)
  103c52:	ff 45 f0             	incl   -0x10(%ebp)
  103c55:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103c58:	8b 50 14             	mov    0x14(%eax),%edx
  103c5b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c5e:	39 c2                	cmp    %eax,%edx
  103c60:	77 dd                	ja     103c3f <loadElf+0x1e9>
  103c62:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  103c66:	ff 45 ec             	incl   -0x14(%ebp)
  103c69:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103c6c:	8b 40 2c             	mov    0x2c(%eax),%eax
  103c6f:	0f b7 c0             	movzwl %ax,%eax
  103c72:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  103c75:	0f 8c 5e ff ff ff    	jl     103bd9 <loadElf+0x183>
  103c7b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103c7e:	8b 50 18             	mov    0x18(%eax),%edx
  103c81:	8b 45 10             	mov    0x10(%ebp),%eax
  103c84:	89 10                	mov    %edx,(%eax)
  103c86:	b8 00 00 00 00       	mov    $0x0,%eax
  103c8b:	89 f4                	mov    %esi,%esp
  103c8d:	8d 65 f8             	lea    -0x8(%ebp),%esp
  103c90:	5b                   	pop    %ebx
  103c91:	5e                   	pop    %esi
  103c92:	5d                   	pop    %ebp
  103c93:	c3                   	ret    

00103c94 <loadUMain>:
  103c94:	55                   	push   %ebp
  103c95:	89 e5                	mov    %esp,%ebp
  103c97:	53                   	push   %ebx
  103c98:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  103c9e:	e8 92 cb ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103ca3:	81 c3 5d 33 00 00    	add    $0x335d,%ebx
  103ca9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103cb0:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  103cb7:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  103cbe:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  103cc5:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  103ccc:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  103cd3:	00 00 00 
  103cd6:	8d 83 eb d8 ff ff    	lea    -0x2715(%ebx),%eax
  103cdc:	50                   	push   %eax
  103cdd:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  103ce3:	50                   	push   %eax
  103ce4:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  103cea:	50                   	push   %eax
  103ceb:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103cf1:	50                   	push   %eax
  103cf2:	e8 8e c8 ff ff       	call   100585 <readInode>
  103cf7:	83 c4 10             	add    $0x10,%esp
  103cfa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103d01:	eb 31                	jmp    103d34 <loadUMain+0xa0>
  103d03:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103d09:	8b 40 14             	mov    0x14(%eax),%eax
  103d0c:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  103d10:	89 c2                	mov    %eax,%edx
  103d12:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103d15:	01 d0                	add    %edx,%eax
  103d17:	50                   	push   %eax
  103d18:	ff 75 f4             	pushl  -0xc(%ebp)
  103d1b:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  103d21:	50                   	push   %eax
  103d22:	c7 c0 60 90 10 00    	mov    $0x109060,%eax
  103d28:	50                   	push   %eax
  103d29:	e8 4c c7 ff ff       	call   10047a <readBlock>
  103d2e:	83 c4 10             	add    $0x10,%esp
  103d31:	ff 45 f4             	incl   -0xc(%ebp)
  103d34:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  103d3a:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  103d3d:	7c c4                	jl     103d03 <loadUMain+0x6f>
  103d3f:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103d42:	8b 40 18             	mov    0x18(%eax),%eax
  103d45:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103d48:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103d4b:	8b 40 1c             	mov    0x1c(%eax),%eax
  103d4e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103d51:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103d54:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103d57:	01 d0                	add    %edx,%eax
  103d59:	8b 40 04             	mov    0x4(%eax),%eax
  103d5c:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103d5f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103d66:	eb 1c                	jmp    103d84 <loadUMain+0xf0>
  103d68:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103d6b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103d6e:	01 c2                	add    %eax,%edx
  103d70:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103d73:	01 d0                	add    %edx,%eax
  103d75:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  103d78:	8b 55 e8             	mov    -0x18(%ebp),%edx
  103d7b:	01 ca                	add    %ecx,%edx
  103d7d:	8a 00                	mov    (%eax),%al
  103d7f:	88 02                	mov    %al,(%edx)
  103d81:	ff 45 f4             	incl   -0xc(%ebp)
  103d84:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  103d8b:	7e db                	jle    103d68 <loadUMain+0xd4>
  103d8d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103d90:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103d93:	c9                   	leave  
  103d94:	c3                   	ret    

00103d95 <initProc>:
  103d95:	55                   	push   %ebp
  103d96:	89 e5                	mov    %esp,%ebp
  103d98:	53                   	push   %ebx
  103d99:	83 ec 14             	sub    $0x14,%esp
  103d9c:	e8 94 ca ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103da1:	81 c3 5f 32 00 00    	add    $0x325f,%ebx
  103da7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103dae:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103db5:	eb 3b                	jmp    103df2 <initProc+0x5d>
  103db7:	c7 c1 60 94 10 00    	mov    $0x109460,%ecx
  103dbd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103dc0:	89 d0                	mov    %edx,%eax
  103dc2:	01 c0                	add    %eax,%eax
  103dc4:	01 d0                	add    %edx,%eax
  103dc6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  103dcd:	01 d0                	add    %edx,%eax
  103dcf:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  103dd6:	01 d0                	add    %edx,%eax
  103dd8:	89 c2                	mov    %eax,%edx
  103dda:	c1 e2 04             	shl    $0x4,%edx
  103ddd:	01 d0                	add    %edx,%eax
  103ddf:	c1 e0 02             	shl    $0x2,%eax
  103de2:	01 c8                	add    %ecx,%eax
  103de4:	05 54 40 00 00       	add    $0x4054,%eax
  103de9:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  103def:	ff 45 f4             	incl   -0xc(%ebp)
  103df2:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  103df6:	7e bf                	jle    103db7 <initProc+0x22>
  103df8:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103dfe:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  103e04:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e0a:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  103e10:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e16:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  103e1c:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e22:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  103e28:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e2e:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  103e35:	00 00 00 
  103e38:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e3e:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  103e45:	00 00 00 
  103e48:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e4e:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  103e55:	00 00 00 
  103e58:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e5e:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  103e65:	00 00 00 
  103e68:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e6e:	8d 90 8c 80 00 00    	lea    0x808c(%eax),%edx
  103e74:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e7a:	89 90 d8 80 00 00    	mov    %edx,0x80d8(%eax)
  103e80:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e86:	8d 90 d8 80 00 00    	lea    0x80d8(%eax),%edx
  103e8c:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e92:	89 90 dc 80 00 00    	mov    %edx,0x80dc(%eax)
  103e98:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103e9e:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  103ea5:	00 00 00 
  103ea8:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103eae:	c7 80 e4 80 00 00 00 	movl   $0x0,0x80e4(%eax)
  103eb5:	00 00 00 
  103eb8:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ebe:	c7 80 e8 80 00 00 00 	movl   $0x0,0x80e8(%eax)
  103ec5:	00 00 00 
  103ec8:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ece:	c7 80 ec 80 00 00 01 	movl   $0x1,0x80ec(%eax)
  103ed5:	00 00 00 
  103ed8:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103ede:	c7 80 d4 80 00 00 23 	movl   $0x23,0x80d4(%eax)
  103ee5:	00 00 00 
  103ee8:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103eee:	c7 80 d0 80 00 00 00 	movl   $0x100000,0x80d0(%eax)
  103ef5:	00 10 00 
  103ef8:	9c                   	pushf  
  103ef9:	5a                   	pop    %edx
  103efa:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f00:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  103f06:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f0c:	8b 80 cc 80 00 00    	mov    0x80cc(%eax),%eax
  103f12:	80 cc 02             	or     $0x2,%ah
  103f15:	89 c2                	mov    %eax,%edx
  103f17:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f1d:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  103f23:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f29:	c7 80 c8 80 00 00 1b 	movl   $0x1b,0x80c8(%eax)
  103f30:	00 00 00 
  103f33:	e8 5c fd ff ff       	call   103c94 <loadUMain>
  103f38:	89 c2                	mov    %eax,%edx
  103f3a:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f40:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  103f46:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f4c:	c7 80 98 80 00 00 23 	movl   $0x23,0x8098(%eax)
  103f53:	00 00 00 
  103f56:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f5c:	c7 80 94 80 00 00 23 	movl   $0x23,0x8094(%eax)
  103f63:	00 00 00 
  103f66:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f6c:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  103f73:	00 00 00 
  103f76:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f7c:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  103f83:	00 00 00 
  103f86:	c7 c0 44 90 10 00    	mov    $0x109044,%eax
  103f8c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  103f92:	c7 c0 60 94 10 00    	mov    $0x109460,%eax
  103f98:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  103f9e:	e8 ef f3 ff ff       	call   103392 <enableInterrupt>
  103fa3:	cd 20                	int    $0x20
  103fa5:	e8 d7 f3 ff ff       	call   103381 <waitForInterrupt>
  103faa:	eb f9                	jmp    103fa5 <initProc+0x210>

00103fac <inByte>:
  103fac:	55                   	push   %ebp
  103fad:	89 e5                	mov    %esp,%ebp
  103faf:	83 ec 14             	sub    $0x14,%esp
  103fb2:	e8 8e c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103fb7:	05 49 30 00 00       	add    $0x3049,%eax
  103fbc:	8b 45 08             	mov    0x8(%ebp),%eax
  103fbf:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  103fc3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103fc6:	89 c2                	mov    %eax,%edx
  103fc8:	ec                   	in     (%dx),%al
  103fc9:	88 45 ff             	mov    %al,-0x1(%ebp)
  103fcc:	8a 45 ff             	mov    -0x1(%ebp),%al
  103fcf:	c9                   	leave  
  103fd0:	c3                   	ret    

00103fd1 <outByte>:
  103fd1:	55                   	push   %ebp
  103fd2:	89 e5                	mov    %esp,%ebp
  103fd4:	83 ec 08             	sub    $0x8,%esp
  103fd7:	e8 69 c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103fdc:	05 24 30 00 00       	add    $0x3024,%eax
  103fe1:	8b 45 08             	mov    0x8(%ebp),%eax
  103fe4:	8b 55 0c             	mov    0xc(%ebp),%edx
  103fe7:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103feb:	88 d0                	mov    %dl,%al
  103fed:	88 45 f8             	mov    %al,-0x8(%ebp)
  103ff0:	8a 45 f8             	mov    -0x8(%ebp),%al
  103ff3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103ff6:	ee                   	out    %al,(%dx)
  103ff7:	90                   	nop
  103ff8:	c9                   	leave  
  103ff9:	c3                   	ret    

00103ffa <initSerial>:
  103ffa:	55                   	push   %ebp
  103ffb:	89 e5                	mov    %esp,%ebp
  103ffd:	e8 43 c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104002:	05 fe 2f 00 00       	add    $0x2ffe,%eax
  104007:	6a 00                	push   $0x0
  104009:	68 f9 03 00 00       	push   $0x3f9
  10400e:	e8 be ff ff ff       	call   103fd1 <outByte>
  104013:	83 c4 08             	add    $0x8,%esp
  104016:	6a 80                	push   $0xffffff80
  104018:	68 fb 03 00 00       	push   $0x3fb
  10401d:	e8 af ff ff ff       	call   103fd1 <outByte>
  104022:	83 c4 08             	add    $0x8,%esp
  104025:	6a 01                	push   $0x1
  104027:	68 f8 03 00 00       	push   $0x3f8
  10402c:	e8 a0 ff ff ff       	call   103fd1 <outByte>
  104031:	83 c4 08             	add    $0x8,%esp
  104034:	6a 00                	push   $0x0
  104036:	68 f9 03 00 00       	push   $0x3f9
  10403b:	e8 91 ff ff ff       	call   103fd1 <outByte>
  104040:	83 c4 08             	add    $0x8,%esp
  104043:	6a 03                	push   $0x3
  104045:	68 fb 03 00 00       	push   $0x3fb
  10404a:	e8 82 ff ff ff       	call   103fd1 <outByte>
  10404f:	83 c4 08             	add    $0x8,%esp
  104052:	6a c7                	push   $0xffffffc7
  104054:	68 fa 03 00 00       	push   $0x3fa
  104059:	e8 73 ff ff ff       	call   103fd1 <outByte>
  10405e:	83 c4 08             	add    $0x8,%esp
  104061:	6a 0b                	push   $0xb
  104063:	68 fc 03 00 00       	push   $0x3fc
  104068:	e8 64 ff ff ff       	call   103fd1 <outByte>
  10406d:	83 c4 08             	add    $0x8,%esp
  104070:	90                   	nop
  104071:	c9                   	leave  
  104072:	c3                   	ret    

00104073 <serialIdle>:
  104073:	55                   	push   %ebp
  104074:	89 e5                	mov    %esp,%ebp
  104076:	e8 ca c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10407b:	05 85 2f 00 00       	add    $0x2f85,%eax
  104080:	68 fd 03 00 00       	push   $0x3fd
  104085:	e8 22 ff ff ff       	call   103fac <inByte>
  10408a:	83 c4 04             	add    $0x4,%esp
  10408d:	0f b6 c0             	movzbl %al,%eax
  104090:	83 e0 20             	and    $0x20,%eax
  104093:	85 c0                	test   %eax,%eax
  104095:	0f 95 c0             	setne  %al
  104098:	0f b6 c0             	movzbl %al,%eax
  10409b:	c9                   	leave  
  10409c:	c3                   	ret    

0010409d <putChar>:
  10409d:	55                   	push   %ebp
  10409e:	89 e5                	mov    %esp,%ebp
  1040a0:	83 ec 04             	sub    $0x4,%esp
  1040a3:	e8 9d c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040a8:	05 58 2f 00 00       	add    $0x2f58,%eax
  1040ad:	8b 45 08             	mov    0x8(%ebp),%eax
  1040b0:	88 45 fc             	mov    %al,-0x4(%ebp)
  1040b3:	90                   	nop
  1040b4:	e8 ba ff ff ff       	call   104073 <serialIdle>
  1040b9:	83 f8 01             	cmp    $0x1,%eax
  1040bc:	75 f6                	jne    1040b4 <putChar+0x17>
  1040be:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
  1040c2:	50                   	push   %eax
  1040c3:	68 f8 03 00 00       	push   $0x3f8
  1040c8:	e8 04 ff ff ff       	call   103fd1 <outByte>
  1040cd:	83 c4 08             	add    $0x8,%esp
  1040d0:	90                   	nop
  1040d1:	c9                   	leave  
  1040d2:	c3                   	ret    

001040d3 <putString>:
  1040d3:	55                   	push   %ebp
  1040d4:	89 e5                	mov    %esp,%ebp
  1040d6:	83 ec 10             	sub    $0x10,%esp
  1040d9:	e8 67 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040de:	05 22 2f 00 00       	add    $0x2f22,%eax
  1040e3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1040ea:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1040ee:	74 30                	je     104120 <putString+0x4d>
  1040f0:	eb 1e                	jmp    104110 <putString+0x3d>
  1040f2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1040f5:	8d 50 01             	lea    0x1(%eax),%edx
  1040f8:	89 55 fc             	mov    %edx,-0x4(%ebp)
  1040fb:	89 c2                	mov    %eax,%edx
  1040fd:	8b 45 08             	mov    0x8(%ebp),%eax
  104100:	01 d0                	add    %edx,%eax
  104102:	8a 00                	mov    (%eax),%al
  104104:	0f be c0             	movsbl %al,%eax
  104107:	50                   	push   %eax
  104108:	e8 90 ff ff ff       	call   10409d <putChar>
  10410d:	83 c4 04             	add    $0x4,%esp
  104110:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104113:	8b 45 08             	mov    0x8(%ebp),%eax
  104116:	01 d0                	add    %edx,%eax
  104118:	8a 00                	mov    (%eax),%al
  10411a:	84 c0                	test   %al,%al
  10411c:	75 d4                	jne    1040f2 <putString+0x1f>
  10411e:	eb 01                	jmp    104121 <putString+0x4e>
  104120:	90                   	nop
  104121:	c9                   	leave  
  104122:	c3                   	ret    

00104123 <putInt>:
  104123:	55                   	push   %ebp
  104124:	89 e5                	mov    %esp,%ebp
  104126:	83 ec 30             	sub    $0x30,%esp
  104129:	e8 17 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10412e:	05 d2 2e 00 00       	add    $0x2ed2,%eax
  104133:	8d 45 dc             	lea    -0x24(%ebp),%eax
  104136:	83 c0 1f             	add    $0x1f,%eax
  104139:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10413c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10413f:	c6 00 00             	movb   $0x0,(%eax)
  104142:	ff 4d fc             	decl   -0x4(%ebp)
  104145:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104148:	c6 00 0a             	movb   $0xa,(%eax)
  10414b:	8b 45 08             	mov    0x8(%ebp),%eax
  10414e:	b9 0a 00 00 00       	mov    $0xa,%ecx
  104153:	99                   	cltd   
  104154:	f7 f9                	idiv   %ecx
  104156:	89 d0                	mov    %edx,%eax
  104158:	83 c0 30             	add    $0x30,%eax
  10415b:	ff 4d fc             	decl   -0x4(%ebp)
  10415e:	88 c2                	mov    %al,%dl
  104160:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104163:	88 10                	mov    %dl,(%eax)
  104165:	8b 4d 08             	mov    0x8(%ebp),%ecx
  104168:	b8 67 66 66 66       	mov    $0x66666667,%eax
  10416d:	f7 e9                	imul   %ecx
  10416f:	c1 fa 02             	sar    $0x2,%edx
  104172:	89 c8                	mov    %ecx,%eax
  104174:	c1 f8 1f             	sar    $0x1f,%eax
  104177:	29 c2                	sub    %eax,%edx
  104179:	89 d0                	mov    %edx,%eax
  10417b:	89 45 08             	mov    %eax,0x8(%ebp)
  10417e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104182:	75 c7                	jne    10414b <putInt+0x28>
  104184:	ff 75 fc             	pushl  -0x4(%ebp)
  104187:	e8 47 ff ff ff       	call   1040d3 <putString>
  10418c:	83 c4 04             	add    $0x4,%esp
  10418f:	90                   	nop
  104190:	c9                   	leave  
  104191:	c3                   	ret    

00104192 <outByte>:
  104192:	55                   	push   %ebp
  104193:	89 e5                	mov    %esp,%ebp
  104195:	83 ec 08             	sub    $0x8,%esp
  104198:	e8 a8 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10419d:	05 63 2e 00 00       	add    $0x2e63,%eax
  1041a2:	8b 45 08             	mov    0x8(%ebp),%eax
  1041a5:	8b 55 0c             	mov    0xc(%ebp),%edx
  1041a8:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1041ac:	88 d0                	mov    %dl,%al
  1041ae:	88 45 f8             	mov    %al,-0x8(%ebp)
  1041b1:	8a 45 f8             	mov    -0x8(%ebp),%al
  1041b4:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1041b7:	ee                   	out    %al,(%dx)
  1041b8:	90                   	nop
  1041b9:	c9                   	leave  
  1041ba:	c3                   	ret    

001041bb <initTimer>:
  1041bb:	55                   	push   %ebp
  1041bc:	89 e5                	mov    %esp,%ebp
  1041be:	83 ec 10             	sub    $0x10,%esp
  1041c1:	e8 7f c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1041c6:	05 3a 2e 00 00       	add    $0x2e3a,%eax
  1041cb:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  1041d2:	6a 34                	push   $0x34
  1041d4:	6a 43                	push   $0x43
  1041d6:	e8 b7 ff ff ff       	call   104192 <outByte>
  1041db:	83 c4 08             	add    $0x8,%esp
  1041de:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1041e1:	25 ff 00 00 80       	and    $0x800000ff,%eax
  1041e6:	85 c0                	test   %eax,%eax
  1041e8:	79 07                	jns    1041f1 <initTimer+0x36>
  1041ea:	48                   	dec    %eax
  1041eb:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  1041f0:	40                   	inc    %eax
  1041f1:	0f be c0             	movsbl %al,%eax
  1041f4:	50                   	push   %eax
  1041f5:	6a 40                	push   $0x40
  1041f7:	e8 96 ff ff ff       	call   104192 <outByte>
  1041fc:	83 c4 08             	add    $0x8,%esp
  1041ff:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104202:	85 c0                	test   %eax,%eax
  104204:	79 05                	jns    10420b <initTimer+0x50>
  104206:	05 ff 00 00 00       	add    $0xff,%eax
  10420b:	c1 f8 08             	sar    $0x8,%eax
  10420e:	0f be c0             	movsbl %al,%eax
  104211:	50                   	push   %eax
  104212:	6a 40                	push   $0x40
  104214:	e8 79 ff ff ff       	call   104192 <outByte>
  104219:	83 c4 08             	add    $0x8,%esp
  10421c:	90                   	nop
  10421d:	c9                   	leave  
  10421e:	c3                   	ret    

0010421f <outByte>:
  10421f:	55                   	push   %ebp
  104220:	89 e5                	mov    %esp,%ebp
  104222:	83 ec 08             	sub    $0x8,%esp
  104225:	e8 1b c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10422a:	05 d6 2d 00 00       	add    $0x2dd6,%eax
  10422f:	8b 45 08             	mov    0x8(%ebp),%eax
  104232:	8b 55 0c             	mov    0xc(%ebp),%edx
  104235:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  104239:	88 d0                	mov    %dl,%al
  10423b:	88 45 f8             	mov    %al,-0x8(%ebp)
  10423e:	8a 45 f8             	mov    -0x8(%ebp),%al
  104241:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104244:	ee                   	out    %al,(%dx)
  104245:	90                   	nop
  104246:	c9                   	leave  
  104247:	c3                   	ret    

00104248 <initVga>:
  104248:	55                   	push   %ebp
  104249:	89 e5                	mov    %esp,%ebp
  10424b:	83 ec 08             	sub    $0x8,%esp
  10424e:	e8 f2 c1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104253:	05 ad 2d 00 00       	add    $0x2dad,%eax
  104258:	c7 80 0c 02 00 00 00 	movl   $0x0,0x20c(%eax)
  10425f:	00 00 00 
  104262:	c7 80 10 02 00 00 00 	movl   $0x0,0x210(%eax)
  104269:	00 00 00 
  10426c:	c7 80 14 02 00 00 00 	movl   $0x0,0x214(%eax)
  104273:	00 00 00 
  104276:	e8 12 00 00 00       	call   10428d <clearScreen>
  10427b:	83 ec 08             	sub    $0x8,%esp
  10427e:	6a 00                	push   $0x0
  104280:	6a 00                	push   $0x0
  104282:	e8 5a 00 00 00       	call   1042e1 <updateCursor>
  104287:	83 c4 10             	add    $0x10,%esp
  10428a:	90                   	nop
  10428b:	c9                   	leave  
  10428c:	c3                   	ret    

0010428d <clearScreen>:
  10428d:	55                   	push   %ebp
  10428e:	89 e5                	mov    %esp,%ebp
  104290:	83 ec 10             	sub    $0x10,%esp
  104293:	e8 ad c1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104298:	05 68 2d 00 00       	add    $0x2d68,%eax
  10429d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1042a4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1042ab:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  1042b1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1042b8:	eb 1b                	jmp    1042d5 <clearScreen+0x48>
  1042ba:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1042bd:	01 c0                	add    %eax,%eax
  1042bf:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1042c2:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1042c5:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  1042cb:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  1042cf:	66 89 02             	mov    %ax,(%edx)
  1042d2:	ff 45 fc             	incl   -0x4(%ebp)
  1042d5:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  1042dc:	7e dc                	jle    1042ba <clearScreen+0x2d>
  1042de:	90                   	nop
  1042df:	c9                   	leave  
  1042e0:	c3                   	ret    

001042e1 <updateCursor>:
  1042e1:	55                   	push   %ebp
  1042e2:	89 e5                	mov    %esp,%ebp
  1042e4:	83 ec 10             	sub    $0x10,%esp
  1042e7:	e8 59 c1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1042ec:	05 14 2d 00 00       	add    $0x2d14,%eax
  1042f1:	8b 55 08             	mov    0x8(%ebp),%edx
  1042f4:	89 d0                	mov    %edx,%eax
  1042f6:	c1 e0 02             	shl    $0x2,%eax
  1042f9:	01 d0                	add    %edx,%eax
  1042fb:	c1 e0 04             	shl    $0x4,%eax
  1042fe:	89 c2                	mov    %eax,%edx
  104300:	8b 45 0c             	mov    0xc(%ebp),%eax
  104303:	01 d0                	add    %edx,%eax
  104305:	89 45 fc             	mov    %eax,-0x4(%ebp)
  104308:	6a 0f                	push   $0xf
  10430a:	68 d4 03 00 00       	push   $0x3d4
  10430f:	e8 0b ff ff ff       	call   10421f <outByte>
  104314:	83 c4 08             	add    $0x8,%esp
  104317:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10431a:	0f be c0             	movsbl %al,%eax
  10431d:	50                   	push   %eax
  10431e:	68 d5 03 00 00       	push   $0x3d5
  104323:	e8 f7 fe ff ff       	call   10421f <outByte>
  104328:	83 c4 08             	add    $0x8,%esp
  10432b:	6a 0e                	push   $0xe
  10432d:	68 d4 03 00 00       	push   $0x3d4
  104332:	e8 e8 fe ff ff       	call   10421f <outByte>
  104337:	83 c4 08             	add    $0x8,%esp
  10433a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10433d:	c1 f8 08             	sar    $0x8,%eax
  104340:	0f be c0             	movsbl %al,%eax
  104343:	50                   	push   %eax
  104344:	68 d5 03 00 00       	push   $0x3d5
  104349:	e8 d1 fe ff ff       	call   10421f <outByte>
  10434e:	83 c4 08             	add    $0x8,%esp
  104351:	90                   	nop
  104352:	c9                   	leave  
  104353:	c3                   	ret    

00104354 <scrollScreen>:
  104354:	55                   	push   %ebp
  104355:	89 e5                	mov    %esp,%ebp
  104357:	53                   	push   %ebx
  104358:	83 ec 10             	sub    $0x10,%esp
  10435b:	e8 3e eb ff ff       	call   102e9e <__x86.get_pc_thunk.dx>
  104360:	81 c2 a0 2c 00 00    	add    $0x2ca0,%edx
  104366:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10436d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  104374:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  10437a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  104381:	eb 2b                	jmp    1043ae <scrollScreen+0x5a>
  104383:	8b 45 f8             	mov    -0x8(%ebp),%eax
  104386:	01 c0                	add    %eax,%eax
  104388:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10438b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10438e:	05 00 80 0b 00       	add    $0xb8000,%eax
  104393:	66 8b 00             	mov    (%eax),%ax
  104396:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  10439a:	c7 c1 60 d9 12 00    	mov    $0x12d960,%ecx
  1043a0:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  1043a3:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  1043a7:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  1043ab:	ff 45 f8             	incl   -0x8(%ebp)
  1043ae:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  1043b5:	7e cc                	jle    104383 <scrollScreen+0x2f>
  1043b7:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1043be:	eb 2f                	jmp    1043ef <scrollScreen+0x9b>
  1043c0:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1043c3:	01 c0                	add    %eax,%eax
  1043c5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1043c8:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1043cb:	8d 48 50             	lea    0x50(%eax),%ecx
  1043ce:	c7 c0 60 d9 12 00    	mov    $0x12d960,%eax
  1043d4:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  1043d8:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  1043dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043df:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  1043e5:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  1043e9:	66 89 01             	mov    %ax,(%ecx)
  1043ec:	ff 45 f8             	incl   -0x8(%ebp)
  1043ef:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  1043f6:	7e c8                	jle    1043c0 <scrollScreen+0x6c>
  1043f8:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  1043fe:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  104405:	eb 1b                	jmp    104422 <scrollScreen+0xce>
  104407:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10440a:	01 c0                	add    %eax,%eax
  10440c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10440f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104412:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  104418:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  10441c:	66 89 02             	mov    %ax,(%edx)
  10441f:	ff 45 f8             	incl   -0x8(%ebp)
  104422:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  104429:	7e dc                	jle    104407 <scrollScreen+0xb3>
  10442b:	90                   	nop
  10442c:	83 c4 10             	add    $0x10,%esp
  10442f:	5b                   	pop    %ebx
  104430:	5d                   	pop    %ebp
  104431:	c3                   	ret    

00104432 <waitForInterrupt>:
  104432:	55                   	push   %ebp
  104433:	89 e5                	mov    %esp,%ebp
  104435:	e8 0b c0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10443a:	05 c6 2b 00 00       	add    $0x2bc6,%eax
  10443f:	f4                   	hlt    
  104440:	90                   	nop
  104441:	5d                   	pop    %ebp
  104442:	c3                   	ret    

00104443 <disableInterrupt>:
  104443:	55                   	push   %ebp
  104444:	89 e5                	mov    %esp,%ebp
  104446:	e8 fa bf ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10444b:	05 b5 2b 00 00       	add    $0x2bb5,%eax
  104450:	fa                   	cli    
  104451:	90                   	nop
  104452:	5d                   	pop    %ebp
  104453:	c3                   	ret    

00104454 <i2A>:
  104454:	55                   	push   %ebp
  104455:	89 e5                	mov    %esp,%ebp
  104457:	83 ec 10             	sub    $0x10,%esp
  10445a:	e8 e6 bf ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10445f:	05 a1 2b 00 00       	add    $0x2ba1,%eax
  104464:	8d 80 35 02 00 00    	lea    0x235(%eax),%eax
  10446a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10446d:	8b 45 08             	mov    0x8(%ebp),%eax
  104470:	b9 0a 00 00 00       	mov    $0xa,%ecx
  104475:	99                   	cltd   
  104476:	f7 f9                	idiv   %ecx
  104478:	89 d0                	mov    %edx,%eax
  10447a:	83 c0 30             	add    $0x30,%eax
  10447d:	ff 4d fc             	decl   -0x4(%ebp)
  104480:	88 c2                	mov    %al,%dl
  104482:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104485:	88 10                	mov    %dl,(%eax)
  104487:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10448a:	b8 67 66 66 66       	mov    $0x66666667,%eax
  10448f:	f7 e9                	imul   %ecx
  104491:	c1 fa 02             	sar    $0x2,%edx
  104494:	89 c8                	mov    %ecx,%eax
  104496:	c1 f8 1f             	sar    $0x1f,%eax
  104499:	29 c2                	sub    %eax,%edx
  10449b:	89 d0                	mov    %edx,%eax
  10449d:	89 45 08             	mov    %eax,0x8(%ebp)
  1044a0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1044a4:	75 c7                	jne    10446d <i2A+0x19>
  1044a6:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1044a9:	c9                   	leave  
  1044aa:	c3                   	ret    

001044ab <append>:
  1044ab:	55                   	push   %ebp
  1044ac:	89 e5                	mov    %esp,%ebp
  1044ae:	53                   	push   %ebx
  1044af:	e8 91 bf ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1044b4:	05 4c 2b 00 00       	add    $0x2b4c,%eax
  1044b9:	eb 1a                	jmp    1044d5 <append+0x2a>
  1044bb:	8b 55 0c             	mov    0xc(%ebp),%edx
  1044be:	8d 42 01             	lea    0x1(%edx),%eax
  1044c1:	89 45 0c             	mov    %eax,0xc(%ebp)
  1044c4:	8b 45 08             	mov    0x8(%ebp),%eax
  1044c7:	8b 00                	mov    (%eax),%eax
  1044c9:	8d 58 01             	lea    0x1(%eax),%ebx
  1044cc:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1044cf:	89 19                	mov    %ebx,(%ecx)
  1044d1:	8a 12                	mov    (%edx),%dl
  1044d3:	88 10                	mov    %dl,(%eax)
  1044d5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044d8:	8a 00                	mov    (%eax),%al
  1044da:	84 c0                	test   %al,%al
  1044dc:	75 dd                	jne    1044bb <append+0x10>
  1044de:	90                   	nop
  1044df:	5b                   	pop    %ebx
  1044e0:	5d                   	pop    %ebp
  1044e1:	c3                   	ret    

001044e2 <displayMessage>:
  1044e2:	55                   	push   %ebp
  1044e3:	89 e5                	mov    %esp,%ebp
  1044e5:	53                   	push   %ebx
  1044e6:	83 ec 14             	sub    $0x14,%esp
  1044e9:	e8 47 c3 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1044ee:	81 c3 12 2b 00 00    	add    $0x2b12,%ebx
  1044f4:	8d 83 32 00 00 00    	lea    0x32(%ebx),%eax
  1044fa:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1044fd:	ff 75 08             	pushl  0x8(%ebp)
  104500:	8d 45 f4             	lea    -0xc(%ebp),%eax
  104503:	50                   	push   %eax
  104504:	e8 a2 ff ff ff       	call   1044ab <append>
  104509:	83 c4 08             	add    $0x8,%esp
  10450c:	8d 83 f8 d8 ff ff    	lea    -0x2708(%ebx),%eax
  104512:	50                   	push   %eax
  104513:	8d 45 f4             	lea    -0xc(%ebp),%eax
  104516:	50                   	push   %eax
  104517:	e8 8f ff ff ff       	call   1044ab <append>
  10451c:	83 c4 08             	add    $0x8,%esp
  10451f:	ff 75 0c             	pushl  0xc(%ebp)
  104522:	e8 2d ff ff ff       	call   104454 <i2A>
  104527:	83 c4 04             	add    $0x4,%esp
  10452a:	50                   	push   %eax
  10452b:	8d 45 f4             	lea    -0xc(%ebp),%eax
  10452e:	50                   	push   %eax
  10452f:	e8 77 ff ff ff       	call   1044ab <append>
  104534:	83 c4 08             	add    $0x8,%esp
  104537:	8d 83 fa d8 ff ff    	lea    -0x2706(%ebx),%eax
  10453d:	50                   	push   %eax
  10453e:	8d 45 f4             	lea    -0xc(%ebp),%eax
  104541:	50                   	push   %eax
  104542:	e8 64 ff ff ff       	call   1044ab <append>
  104547:	83 c4 08             	add    $0x8,%esp
  10454a:	8d 83 20 00 00 00    	lea    0x20(%ebx),%eax
  104550:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104553:	eb 1b                	jmp    104570 <displayMessage+0x8e>
  104555:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104558:	8a 00                	mov    (%eax),%al
  10455a:	0f be c0             	movsbl %al,%eax
  10455d:	83 ec 0c             	sub    $0xc,%esp
  104560:	50                   	push   %eax
  104561:	e8 37 fb ff ff       	call   10409d <putChar>
  104566:	83 c4 10             	add    $0x10,%esp
  104569:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10456c:	40                   	inc    %eax
  10456d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104570:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104573:	8a 00                	mov    (%eax),%al
  104575:	84 c0                	test   %al,%al
  104577:	75 dc                	jne    104555 <displayMessage+0x73>
  104579:	90                   	nop
  10457a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10457d:	c9                   	leave  
  10457e:	c3                   	ret    

0010457f <abort>:
  10457f:	55                   	push   %ebp
  104580:	89 e5                	mov    %esp,%ebp
  104582:	83 ec 08             	sub    $0x8,%esp
  104585:	e8 bb be ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10458a:	05 76 2a 00 00       	add    $0x2a76,%eax
  10458f:	e8 af fe ff ff       	call   104443 <disableInterrupt>
  104594:	83 ec 08             	sub    $0x8,%esp
  104597:	ff 75 0c             	pushl  0xc(%ebp)
  10459a:	ff 75 08             	pushl  0x8(%ebp)
  10459d:	e8 40 ff ff ff       	call   1044e2 <displayMessage>
  1045a2:	83 c4 10             	add    $0x10,%esp
  1045a5:	e8 88 fe ff ff       	call   104432 <waitForInterrupt>
  1045aa:	eb f9                	jmp    1045a5 <abort+0x26>

001045ac <stringChr>:
  1045ac:	55                   	push   %ebp
  1045ad:	89 e5                	mov    %esp,%ebp
  1045af:	83 ec 14             	sub    $0x14,%esp
  1045b2:	e8 8e be ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1045b7:	05 49 2a 00 00       	add    $0x2a49,%eax
  1045bc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1045bf:	88 45 ec             	mov    %al,-0x14(%ebp)
  1045c2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1045c9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1045cd:	75 31                	jne    104600 <stringChr+0x54>
  1045cf:	8b 45 10             	mov    0x10(%ebp),%eax
  1045d2:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1045d8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1045dd:	eb 3c                	jmp    10461b <stringChr+0x6f>
  1045df:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1045e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1045e5:	01 d0                	add    %edx,%eax
  1045e7:	8a 00                	mov    (%eax),%al
  1045e9:	38 45 ec             	cmp    %al,-0x14(%ebp)
  1045ec:	75 0f                	jne    1045fd <stringChr+0x51>
  1045ee:	8b 45 10             	mov    0x10(%ebp),%eax
  1045f1:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1045f4:	89 10                	mov    %edx,(%eax)
  1045f6:	b8 00 00 00 00       	mov    $0x0,%eax
  1045fb:	eb 1e                	jmp    10461b <stringChr+0x6f>
  1045fd:	ff 45 fc             	incl   -0x4(%ebp)
  104600:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104603:	8b 45 08             	mov    0x8(%ebp),%eax
  104606:	01 d0                	add    %edx,%eax
  104608:	8a 00                	mov    (%eax),%al
  10460a:	84 c0                	test   %al,%al
  10460c:	75 d1                	jne    1045df <stringChr+0x33>
  10460e:	8b 45 10             	mov    0x10(%ebp),%eax
  104611:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104614:	89 10                	mov    %edx,(%eax)
  104616:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10461b:	c9                   	leave  
  10461c:	c3                   	ret    

0010461d <stringChrR>:
  10461d:	55                   	push   %ebp
  10461e:	89 e5                	mov    %esp,%ebp
  104620:	83 ec 14             	sub    $0x14,%esp
  104623:	e8 1d be ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104628:	05 d8 29 00 00       	add    $0x29d8,%eax
  10462d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104630:	88 45 ec             	mov    %al,-0x14(%ebp)
  104633:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10463a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10463e:	75 13                	jne    104653 <stringChrR+0x36>
  104640:	8b 45 10             	mov    0x10(%ebp),%eax
  104643:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  104649:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10464e:	eb 47                	jmp    104697 <stringChrR+0x7a>
  104650:	ff 45 fc             	incl   -0x4(%ebp)
  104653:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104656:	8b 45 08             	mov    0x8(%ebp),%eax
  104659:	01 d0                	add    %edx,%eax
  10465b:	8a 00                	mov    (%eax),%al
  10465d:	84 c0                	test   %al,%al
  10465f:	75 ef                	jne    104650 <stringChrR+0x33>
  104661:	8b 45 10             	mov    0x10(%ebp),%eax
  104664:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104667:	89 10                	mov    %edx,(%eax)
  104669:	eb 21                	jmp    10468c <stringChrR+0x6f>
  10466b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10466e:	8b 45 08             	mov    0x8(%ebp),%eax
  104671:	01 d0                	add    %edx,%eax
  104673:	8a 00                	mov    (%eax),%al
  104675:	38 45 ec             	cmp    %al,-0x14(%ebp)
  104678:	75 0f                	jne    104689 <stringChrR+0x6c>
  10467a:	8b 45 10             	mov    0x10(%ebp),%eax
  10467d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104680:	89 10                	mov    %edx,(%eax)
  104682:	b8 00 00 00 00       	mov    $0x0,%eax
  104687:	eb 0e                	jmp    104697 <stringChrR+0x7a>
  104689:	ff 4d fc             	decl   -0x4(%ebp)
  10468c:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  104690:	79 d9                	jns    10466b <stringChrR+0x4e>
  104692:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104697:	c9                   	leave  
  104698:	c3                   	ret    

00104699 <stringLen>:
  104699:	55                   	push   %ebp
  10469a:	89 e5                	mov    %esp,%ebp
  10469c:	83 ec 10             	sub    $0x10,%esp
  10469f:	e8 a1 bd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1046a4:	05 5c 29 00 00       	add    $0x295c,%eax
  1046a9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1046b0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1046b4:	75 0a                	jne    1046c0 <stringLen+0x27>
  1046b6:	b8 00 00 00 00       	mov    $0x0,%eax
  1046bb:	eb 14                	jmp    1046d1 <stringLen+0x38>
  1046bd:	ff 45 fc             	incl   -0x4(%ebp)
  1046c0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1046c3:	8b 45 08             	mov    0x8(%ebp),%eax
  1046c6:	01 d0                	add    %edx,%eax
  1046c8:	8a 00                	mov    (%eax),%al
  1046ca:	84 c0                	test   %al,%al
  1046cc:	75 ef                	jne    1046bd <stringLen+0x24>
  1046ce:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1046d1:	c9                   	leave  
  1046d2:	c3                   	ret    

001046d3 <stringCmp>:
  1046d3:	55                   	push   %ebp
  1046d4:	89 e5                	mov    %esp,%ebp
  1046d6:	83 ec 10             	sub    $0x10,%esp
  1046d9:	e8 67 bd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1046de:	05 22 29 00 00       	add    $0x2922,%eax
  1046e3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1046ea:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1046ee:	74 06                	je     1046f6 <stringCmp+0x23>
  1046f0:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1046f4:	75 3e                	jne    104734 <stringCmp+0x61>
  1046f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1046fb:	eb 44                	jmp    104741 <stringCmp+0x6e>
  1046fd:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104700:	8b 45 08             	mov    0x8(%ebp),%eax
  104703:	01 d0                	add    %edx,%eax
  104705:	8a 10                	mov    (%eax),%dl
  104707:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10470a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10470d:	01 c8                	add    %ecx,%eax
  10470f:	8a 00                	mov    (%eax),%al
  104711:	38 c2                	cmp    %al,%dl
  104713:	74 07                	je     10471c <stringCmp+0x49>
  104715:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10471a:	eb 25                	jmp    104741 <stringCmp+0x6e>
  10471c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10471f:	8b 45 08             	mov    0x8(%ebp),%eax
  104722:	01 d0                	add    %edx,%eax
  104724:	8a 00                	mov    (%eax),%al
  104726:	84 c0                	test   %al,%al
  104728:	75 07                	jne    104731 <stringCmp+0x5e>
  10472a:	b8 00 00 00 00       	mov    $0x0,%eax
  10472f:	eb 10                	jmp    104741 <stringCmp+0x6e>
  104731:	ff 45 fc             	incl   -0x4(%ebp)
  104734:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104737:	3b 45 10             	cmp    0x10(%ebp),%eax
  10473a:	75 c1                	jne    1046fd <stringCmp+0x2a>
  10473c:	b8 00 00 00 00       	mov    $0x0,%eax
  104741:	c9                   	leave  
  104742:	c3                   	ret    

00104743 <stringCpy>:
  104743:	55                   	push   %ebp
  104744:	89 e5                	mov    %esp,%ebp
  104746:	83 ec 10             	sub    $0x10,%esp
  104749:	e8 f7 bc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10474e:	05 b2 28 00 00       	add    $0x28b2,%eax
  104753:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10475a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10475e:	74 06                	je     104766 <stringCpy+0x23>
  104760:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  104764:	75 2c                	jne    104792 <stringCpy+0x4f>
  104766:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10476b:	eb 40                	jmp    1047ad <stringCpy+0x6a>
  10476d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104770:	8b 45 08             	mov    0x8(%ebp),%eax
  104773:	01 d0                	add    %edx,%eax
  104775:	8a 00                	mov    (%eax),%al
  104777:	84 c0                	test   %al,%al
  104779:	74 21                	je     10479c <stringCpy+0x59>
  10477b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10477e:	8b 45 08             	mov    0x8(%ebp),%eax
  104781:	01 d0                	add    %edx,%eax
  104783:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  104786:	8b 55 0c             	mov    0xc(%ebp),%edx
  104789:	01 ca                	add    %ecx,%edx
  10478b:	8a 00                	mov    (%eax),%al
  10478d:	88 02                	mov    %al,(%edx)
  10478f:	ff 45 fc             	incl   -0x4(%ebp)
  104792:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104795:	3b 45 10             	cmp    0x10(%ebp),%eax
  104798:	75 d3                	jne    10476d <stringCpy+0x2a>
  10479a:	eb 01                	jmp    10479d <stringCpy+0x5a>
  10479c:	90                   	nop
  10479d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1047a0:	8b 45 0c             	mov    0xc(%ebp),%eax
  1047a3:	01 d0                	add    %edx,%eax
  1047a5:	c6 00 00             	movb   $0x0,(%eax)
  1047a8:	b8 00 00 00 00       	mov    $0x0,%eax
  1047ad:	c9                   	leave  
  1047ae:	c3                   	ret    

001047af <setBuffer>:
  1047af:	55                   	push   %ebp
  1047b0:	89 e5                	mov    %esp,%ebp
  1047b2:	83 ec 14             	sub    $0x14,%esp
  1047b5:	e8 8b bc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1047ba:	05 46 28 00 00       	add    $0x2846,%eax
  1047bf:	8b 45 10             	mov    0x10(%ebp),%eax
  1047c2:	88 45 ec             	mov    %al,-0x14(%ebp)
  1047c5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1047cc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1047d0:	75 07                	jne    1047d9 <setBuffer+0x2a>
  1047d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1047d7:	eb 26                	jmp    1047ff <setBuffer+0x50>
  1047d9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1047e0:	eb 10                	jmp    1047f2 <setBuffer+0x43>
  1047e2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1047e5:	8b 45 08             	mov    0x8(%ebp),%eax
  1047e8:	01 c2                	add    %eax,%edx
  1047ea:	8a 45 ec             	mov    -0x14(%ebp),%al
  1047ed:	88 02                	mov    %al,(%edx)
  1047ef:	ff 45 fc             	incl   -0x4(%ebp)
  1047f2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1047f5:	3b 45 0c             	cmp    0xc(%ebp),%eax
  1047f8:	7c e8                	jl     1047e2 <setBuffer+0x33>
  1047fa:	b8 00 00 00 00       	mov    $0x0,%eax
  1047ff:	c9                   	leave  
  104800:	c3                   	ret    

00104801 <kEntry>:
  104801:	55                   	push   %ebp
  104802:	89 e5                	mov    %esp,%ebp
  104804:	53                   	push   %ebx
  104805:	83 ec 04             	sub    $0x4,%esp
  104808:	e8 28 c0 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  10480d:	81 c3 f3 27 00 00    	add    $0x27f3,%ebx
  104813:	e8 e2 f7 ff ff       	call   103ffa <initSerial>
  104818:	e8 f7 c1 ff ff       	call   100a14 <initIdt>
  10481d:	e8 40 c0 ff ff       	call   100862 <initIntr>
  104822:	e8 d7 eb ff ff       	call   1033fe <initSeg>
  104827:	e8 1c fa ff ff       	call   104248 <initVga>
  10482c:	e8 8a f9 ff ff       	call   1041bb <initTimer>
  104831:	e8 be e6 ff ff       	call   102ef4 <initKeyTable>
  104836:	e8 ae f0 ff ff       	call   1038e9 <initFS>
  10483b:	e8 d4 f0 ff ff       	call   103914 <initSem>
  104840:	e8 70 f1 ff ff       	call   1039b5 <initDev>
  104845:	e8 4b f5 ff ff       	call   103d95 <initProc>
  10484a:	90                   	nop
  10484b:	83 c4 04             	add    $0x4,%esp
  10484e:	5b                   	pop    %ebx
  10484f:	5d                   	pop    %ebp
  104850:	c3                   	ret    

00104851 <irqEmpty>:
  104851:	6a 00                	push   $0x0
  104853:	6a ff                	push   $0xffffffff
  104855:	eb 39                	jmp    104890 <asmDoIrq>

00104857 <irqErrorCode>:
  104857:	6a ff                	push   $0xffffffff
  104859:	eb 35                	jmp    104890 <asmDoIrq>

0010485b <irqDoubleFault>:
  10485b:	6a ff                	push   $0xffffffff
  10485d:	eb 31                	jmp    104890 <asmDoIrq>

0010485f <irqInvalidTSS>:
  10485f:	6a ff                	push   $0xffffffff
  104861:	eb 2d                	jmp    104890 <asmDoIrq>

00104863 <irqSegNotPresent>:
  104863:	6a ff                	push   $0xffffffff
  104865:	eb 29                	jmp    104890 <asmDoIrq>

00104867 <irqStackSegFault>:
  104867:	6a ff                	push   $0xffffffff
  104869:	eb 25                	jmp    104890 <asmDoIrq>

0010486b <irqGProtectFault>:
  10486b:	6a 0d                	push   $0xd
  10486d:	eb 21                	jmp    104890 <asmDoIrq>

0010486f <irqPageFault>:
  10486f:	6a ff                	push   $0xffffffff
  104871:	eb 1d                	jmp    104890 <asmDoIrq>

00104873 <irqAlignCheck>:
  104873:	6a ff                	push   $0xffffffff
  104875:	eb 19                	jmp    104890 <asmDoIrq>

00104877 <irqSecException>:
  104877:	6a ff                	push   $0xffffffff
  104879:	eb 15                	jmp    104890 <asmDoIrq>

0010487b <irqTimer>:
  10487b:	6a 00                	push   $0x0
  10487d:	6a 20                	push   $0x20
  10487f:	eb 0f                	jmp    104890 <asmDoIrq>

00104881 <irqKeyboard>:
  104881:	6a 00                	push   $0x0
  104883:	6a 21                	push   $0x21
  104885:	eb 09                	jmp    104890 <asmDoIrq>

00104887 <irqSyscall>:
  104887:	6a 00                	push   $0x0
  104889:	68 80 00 00 00       	push   $0x80
  10488e:	eb 00                	jmp    104890 <asmDoIrq>

00104890 <asmDoIrq>:
  104890:	60                   	pusha  
  104891:	1e                   	push   %ds
  104892:	06                   	push   %es
  104893:	0f a0                	push   %fs
  104895:	0f a8                	push   %gs
  104897:	54                   	push   %esp
  104898:	e8 66 c3 ff ff       	call   100c03 <irqHandle>
  10489d:	83 c4 04             	add    $0x4,%esp
  1048a0:	0f a9                	pop    %gs
  1048a2:	0f a1                	pop    %fs
  1048a4:	07                   	pop    %es
  1048a5:	1f                   	pop    %ds
  1048a6:	61                   	popa   
  1048a7:	83 c4 04             	add    $0x4,%esp
  1048aa:	83 c4 04             	add    $0x4,%esp
  1048ad:	cf                   	iret   
